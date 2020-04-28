.class public final Lcom/magicwach/rdefense/OptionsData;
.super Ljava/lang/Object;
.source "OptionsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/OptionsData$OptionProp;
    }
.end annotation


# static fields
.field public static final ENABLE_SOUND:I = 0x0

.field public static final FAST_FORWARD_LEVEL_PAUSE:I = 0x1

.field public static final FAST_FORWARD_LIFE_PAUSE:I = 0x2

.field public static final OPTION_TYPE_COUNT:I = 0x5

.field public static final SCREEN_TIMEOUT_LOCK:I = 0x3

.field public static final SHOW_TURRENT_RANGE:I = 0x4

.field private static option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static init(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/magicwach/rdefense/OptionsData$OptionProp;

    sput-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    .line 13
    new-instance v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;

    const-string v1, "\u542f\u7528\u58f0\u97f3"

    invoke-direct {v0, v1, v2, p0}, Lcom/magicwach/rdefense/OptionsData$OptionProp;-><init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 14
    .local v0, "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    sget-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    aput-object v0, v1, v2

    .line 15
    new-instance v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;

    .end local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    const-string v1, "\u4e0b\u4e00\u6ce2\u5230\u6765\u65f6\u53d6\u6d88\u52a0\u901f"

    invoke-direct {v0, v1, v3, p0}, Lcom/magicwach/rdefense/OptionsData$OptionProp;-><init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 16
    .restart local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    sget-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    aput-object v0, v1, v3

    .line 17
    new-instance v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;

    .end local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    const-string v1, "\u751f\u547d\u51cf\u5c11\u65f6\u6682\u505c\u52a0\u901f"

    invoke-direct {v0, v1, v3, p0}, Lcom/magicwach/rdefense/OptionsData$OptionProp;-><init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 18
    .restart local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    sget-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 19
    new-instance v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;

    .end local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    const-string v1, "\u9632\u6b62\u5c4f\u5e55\u9501\u5b9a"

    invoke-direct {v0, v1, v3, p0}, Lcom/magicwach/rdefense/OptionsData$OptionProp;-><init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 20
    .restart local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    sget-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 21
    new-instance v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;

    .end local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    const-string v1, "\u653e\u7f6e/\u5347\u7ea7\u65f6\u663e\u793a\u8303\u56f4"

    invoke-direct {v0, v1, v3, p0}, Lcom/magicwach/rdefense/OptionsData$OptionProp;-><init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    .line 22
    .restart local v0    # "op":Lcom/magicwach/rdefense/OptionsData$OptionProp;
    sget-object v1, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 23
    return-void
.end method

.method public static optionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static optionValue(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->current_val:Z

    return v0
.end method

.method public static setOptionValue(IZLandroid/content/SharedPreferences$Editor;)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "value"    # Z
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 32
    sget-object v0, Lcom/magicwach/rdefense/OptionsData;->option_props:[Lcom/magicwach/rdefense/OptionsData$OptionProp;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p2}, Lcom/magicwach/rdefense/OptionsData$OptionProp;->setValue(ZLandroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method
