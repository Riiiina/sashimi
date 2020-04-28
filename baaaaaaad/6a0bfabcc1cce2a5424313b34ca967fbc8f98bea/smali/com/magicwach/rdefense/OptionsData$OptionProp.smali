.class Lcom/magicwach/rdefense/OptionsData$OptionProp;
.super Ljava/lang/Object;
.source "OptionsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/OptionsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionProp"
.end annotation


# static fields
.field private static final OPTIONS_PREFIX:Ljava/lang/String; = "ADOptions:"


# instance fields
.field public current_val:Z

.field public default_val:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "default_val"    # Z
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->name:Ljava/lang/String;

    .line 42
    iget-boolean v0, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->default_val:Z

    iput-boolean v0, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->default_val:Z

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->current_val:Z

    .line 44
    return-void
.end method


# virtual methods
.method public setValue(ZLandroid/content/SharedPreferences$Editor;)Z
    .locals 2
    .param p1, "val"    # Z
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->current_val:Z

    if-eq p1, v0, :cond_0

    .line 47
    iput-boolean p1, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->current_val:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/magicwach/rdefense/OptionsData$OptionProp;->current_val:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
