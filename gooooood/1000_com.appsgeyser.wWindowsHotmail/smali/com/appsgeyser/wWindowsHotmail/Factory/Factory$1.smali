.class synthetic Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

.field static final synthetic $SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->values()[Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I

    :try_start_0
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON_LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :goto_2
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->values()[Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

    :try_start_3
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->NO_CONTENT_MESSSAGE:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 93
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
