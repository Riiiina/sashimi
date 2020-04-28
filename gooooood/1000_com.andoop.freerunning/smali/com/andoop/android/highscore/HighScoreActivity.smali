.class public Lcom/andoop/android/highscore/HighScoreActivity;
.super Landroid/app/Activity;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/highscore/HighScoreActivity$BaseTask;,
        Lcom/andoop/android/highscore/HighScoreActivity$GetScoreTask;,
        Lcom/andoop/android/highscore/HighScoreActivity$PostScoreTask;,
        Lcom/andoop/android/highscore/HighScoreActivity$RankListView;,
        Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;
    }
.end annotation


# static fields
.field static final CHARS:[C

.field private static final HIGHSCORE:Ljava/lang/String; = "ANDOOP_HIGHSCORE"

.field public static final HIGHSCORE_ACTIVITY_REQUEST_CODE:I = 0xd903

.field private static final HIGHSCORE_DEBUG_TAG:Ljava/lang/String; = "HIGHSCORE"

.field public static final HIGHSCORE_INTENT_SCORE:Ljava/lang/String; = "ANDOOP_HIGHSCORE_SCORE"

.field private static final HIGHSCORE_INTENT_URL:Ljava/lang/String; = "ANDOOP_HIGHSCORE_URL"

.field private static final HIGHSCORE_PLAYER_NAME:Ljava/lang/String; = "ANDOOP_HIGHSCORE_PLAYER_NAME"

.field private static final HIGHSCORE_SHOW_TOP:Ljava/lang/String; = "ANDOOP_HIGHSCORE_SHOW_TOP"

.field private static final MAX_PLAYER_NAME_LENGTH:I = 0x14

.field private static final RANK_PAGE_COUNT:I = 0x5

.field public static final RESULT_SCORE_SUBMIT_FAIL:I = 0x65

.field public static final RESULT_SCORE_SUBMIT_OK:I = 0x64

.field private static final SECRET_KEY:Ljava/lang/String; = "vj1c8p2q3wer"

.field private static final mSetSceneHandler:Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;


# instance fields
.field mCurrentRank:I

.field mHighScoreURL:Ljava/lang/String;

.field mNext:Landroid/widget/Button;

.field mPlayerName:Landroid/widget/EditText;

.field mPrevious:Landroid/widget/Button;

.field mPreviousName:Ljava/lang/String;

.field mRandomString:Ljava/lang/String;

.field mRandomStringChars:[C

.field mRankView:Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

.field mSubmit:Landroid/widget/Button;

.field mTop:Landroid/widget/Button;

.field mTotalRank:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    .line 87
    new-instance v3, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;

    invoke-direct {v3}, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;-><init>()V

    sput-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->mSetSceneHandler:Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;

    .line 91
    const/16 v3, 0x3e

    new-array v3, v3, [C

    sput-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 96
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_1

    .line 99
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    .line 65
    return-void

    .line 94
    :cond_0
    sget-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v4, v0, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 93
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 97
    :cond_1
    sget-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v4, v0, 0x41

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    .line 100
    :cond_2
    sget-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 99
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mTotalRank:I

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomStringChars:[C

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/highscore/HighScoreActivity;Z)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity;->enableWidgets(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/andoop/android/highscore/HighScoreActivity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity;->genCode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity;->saveName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/andoop/android/highscore/HighScoreActivity;->submitScore(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getPreviousScores()V

    return-void
.end method

.method static synthetic access$6(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getNextScores()V

    return-void
.end method

.method static synthetic access$7(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getTopScores()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HIGHSCORE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private enableWidgets(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity;->toggleButton(Z)V

    .line 287
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPlayerName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 288
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    return-void

    .line 288
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fullScreen()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 185
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 186
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 188
    return-void
.end method

.method private varargs genCode([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 256
    const-string v5, "wrong"

    .line 258
    .local v5, "ret":Ljava/lang/String;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 259
    .local v4, "md5":Ljava/security/MessageDigest;
    array-length v7, p1

    :goto_0
    if-lt v8, v7, :cond_0

    .line 263
    const-string v7, "vj1c8p2q3wer"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 265
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 266
    .local v0, "digestBytes":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-lt v3, v7, :cond_1

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .end local v0    # "digestBytes":[B
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "md5":Ljava/security/MessageDigest;
    :goto_2
    return-object v5

    .line 259
    .restart local v4    # "md5":Ljava/security/MessageDigest;
    :cond_0
    aget-object v6, p1, v8

    .line 260
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 259
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 268
    .end local v6    # "s":Ljava/lang/String;
    .restart local v0    # "digestBytes":[B
    .restart local v2    # "hexString":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    :cond_1
    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-byte v10, v0, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "digestBytes":[B
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 273
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/andoop/android/highscore/HighScoreActivity;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getHighScoreURL()V
    .locals 4

    .prologue
    const-string v3, "http://"

    const-string v2, "/"

    .line 235
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ANDOOP_HIGHSCORE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mHighScoreURL:Ljava/lang/String;

    .line 243
    :cond_1
    return-void
.end method

.method private getNextScores()V
    .locals 2

    .prologue
    .line 316
    iget v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    add-int/lit8 v0, v1, 0x5

    .line 317
    .local v0, "rank":I
    iget v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mTotalRank:I

    if-lt v1, v0, :cond_0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->getScores(Ljava/lang/Integer;)V

    .line 320
    :cond_0
    return-void
.end method

.method private getPreviousScores()V
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 311
    :cond_0
    iget v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->getScores(Ljava/lang/Integer;)V

    .line 313
    :cond_1
    return-void
.end method

.method private getRandomString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 334
    .local v1, "r":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomStringChars:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 338
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomStringChars:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomStringChars:[C

    sget-object v3, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    sget-object v4, Lcom/andoop/android/highscore/HighScoreActivity;->CHARS:[C

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    aput-char v3, v2, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getScores(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "rank"    # Ljava/lang/Integer;

    .prologue
    .line 302
    new-instance v0, Lcom/andoop/android/highscore/HighScoreActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/andoop/android/highscore/HighScoreActivity$7;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method private getTopScores()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 323
    iget v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mCurrentRank:I

    if-le v0, v1, :cond_1

    .line 324
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->getScores(Ljava/lang/Integer;)V

    .line 326
    :cond_1
    return-void
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 191
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mSubmit:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/andoop/android/highscore/HighScoreActivity$2;

    invoke-direct {v1, p0}, Lcom/andoop/android/highscore/HighScoreActivity$2;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPrevious:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPrevious:Landroid/widget/Button;

    new-instance v1, Lcom/andoop/android/highscore/HighScoreActivity$3;

    invoke-direct {v1, p0}, Lcom/andoop/android/highscore/HighScoreActivity$3;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mNext:Landroid/widget/Button;

    .line 220
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/andoop/android/highscore/HighScoreActivity$4;

    invoke-direct {v1, p0}, Lcom/andoop/android/highscore/HighScoreActivity$4;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mTop:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mTop:Landroid/widget/Button;

    new-instance v1, Lcom/andoop/android/highscore/HighScoreActivity$5;

    invoke-direct {v1, p0}, Lcom/andoop/android/highscore/HighScoreActivity$5;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method private initText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string v1, "ANDOOP_HIGHSCORE"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/andoop/android/highscore/HighScoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ANDOOP_HIGHSCORE_PLAYER_NAME"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPreviousName:Ljava/lang/String;

    .line 141
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPlayerName:Landroid/widget/EditText;

    .line 142
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPlayerName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPreviousName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPlayerName:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/andoop/android/highscore/HighScoreActivity$1;

    invoke-direct {v3, p0}, Lcom/andoop/android/highscore/HighScoreActivity$1;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 172
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ANDOOP_HIGHSCORE_SCORE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "score":I
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lcom/andoop/android/highscore/HighScoreActivity;
    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method private saveName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPreviousName:Ljava/lang/String;

    .line 248
    const-string v2, "ANDOOP_HIGHSCORE"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/andoop/android/highscore/HighScoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ANDOOP_HIGHSCORE_PLAYER_NAME"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void
.end method

.method private final showTopHighScore()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 363
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getTopScores()V

    .line 366
    return-void
.end method

.method public static final showTopHighScore(Lcom/andoop/android/engine/BaseActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "game"    # Lcom/andoop/android/engine/BaseActivity;
    .param p1, "highscoreUrl"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    const-string v1, "ANDOOP_HIGHSCORE_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "ANDOOP_HIGHSCORE_SHOW_TOP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v1, "ANDOOP_HIGHSCORE_SCORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method public static final submitHighScore(Lcom/andoop/android/engine/BaseActivity;ILcom/andoop/android/engine/Scene;Ljava/lang/String;)V
    .locals 2
    .param p0, "game"    # Lcom/andoop/android/engine/BaseActivity;
    .param p1, "score"    # I
    .param p2, "backScene"    # Lcom/andoop/android/engine/Scene;
    .param p3, "highscoreUrl"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/andoop/android/highscore/HighScoreActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 344
    const-string v1, "ANDOOP_HIGHSCORE_SCORE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v1, "ANDOOP_HIGHSCORE_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Lcom/andoop/android/engine/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    sget-object v1, Lcom/andoop/android/highscore/HighScoreActivity;->mSetSceneHandler:Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;

    invoke-virtual {v1, p0, p2}, Lcom/andoop/android/highscore/HighScoreActivity$SetSceneHandler;->setScene(Lcom/andoop/android/engine/BaseActivity;Lcom/andoop/android/engine/Scene;)V

    .line 350
    return-void
.end method

.method private submitScore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "score"    # I

    .prologue
    .line 292
    new-instance v0, Lcom/andoop/android/highscore/HighScoreActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/andoop/android/highscore/HighScoreActivity$6;-><init>(Lcom/andoop/android/highscore/HighScoreActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method private toggleButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mTop:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mPrevious:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->fullScreen()V

    .line 126
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->setContentView(I)V

    .line 128
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->initButtons()V

    .line 130
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->initText()V

    .line 132
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getHighScoreURL()V

    .line 134
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/andoop/android/highscore/HighScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRankView:Lcom/andoop/android/highscore/HighScoreActivity$RankListView;

    .line 136
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getRandomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity;->mRandomString:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 370
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ANDOOP_HIGHSCORE_SHOW_TOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/andoop/android/highscore/HighScoreActivity;->showTopHighScore()V

    .line 373
    :cond_0
    return-void
.end method
