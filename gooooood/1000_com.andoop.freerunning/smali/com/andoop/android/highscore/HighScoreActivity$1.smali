.class Lcom/andoop/android/highscore/HighScoreActivity$1;
.super Ljava/lang/Object;
.source "HighScoreActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/highscore/HighScoreActivity;->initText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/highscore/HighScoreActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/highscore/HighScoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/highscore/HighScoreActivity$1;->this$0:Lcom/andoop/android/highscore/HighScoreActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 146
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v4, p1

    .line 168
    :goto_0
    return-object v4

    .line 149
    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 151
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    .line 152
    const-string v4, ""

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    .line 155
    const-string v4, ""

    goto :goto_0

    .line 157
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 159
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 160
    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_6

    .line 162
    :cond_4
    const/16 v4, 0x61

    if-lt v0, v4, :cond_5

    const/16 v4, 0x7a

    if-le v0, v4, :cond_6

    .line 163
    :cond_5
    const/16 v4, 0x41

    if-lt v0, v4, :cond_7

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_7

    .line 164
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
