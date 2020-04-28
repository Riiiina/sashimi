.class public Lcom/clearchannel/iheartradio/android/view/IHRListView;
.super Landroid/widget/ListView;
.source "IHRListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;,
        Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;,
        Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;,
        Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;,
        Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRListView$DisplayedList:[I

.field public static FREESECTIONTITLE:Ljava/lang/String;

.field public static currentSelectedCallletters:Ljava/lang/String;

.field public static currentSelectedIdentifier:Ljava/lang/String;

.field public static lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field public static personalities:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final ADD_FAVORITE:Ljava/lang/String;

.field private final AUTOPLAY_DISABLED:Ljava/lang/String;

.field private final AUTOPLAY_ENABLED:Ljava/lang/String;

.field private final FAVORITE_ADDED:Ljava/lang/String;

.field private final FAVORITE_NOT_LOGGED_IN:Ljava/lang/String;

.field private final FAVORITE_REMOVED:Ljava/lang/String;

.field private final LISTEN:Ljava/lang/String;

.field private MAGIC_LIST_MENU_HOST:Ljava/lang/String;

.field private MAGIC_LIST_MENU_LOCATION:Ljava/lang/String;

.field private MAGIC_LIST_MENU_MUSIC:Ljava/lang/String;

.field private MAGIC_LIST_MENU_NEWS:Ljava/lang/String;

.field private MAGIC_LIST_MENU_RECENTS:Ljava/lang/String;

.field private MAGIC_LIST_MENU_SPORT:Ljava/lang/String;

.field private MAGIC_LIST_MENU_SUBSCRIPTION:Ljava/lang/String;

.field private MAGIC_LIST_MENU_SURPRISEME:Ljava/lang/String;

.field private final REMOVE_FAVORITE:Ljava/lang/String;

.field private final REMOVE_FAVORITE_CANCEL:Ljava/lang/String;

.field private final REMOVE_FAVORITE_ERROR:Ljava/lang/String;

.field private final REMOVE_FAVORITE_NOFAVORITE:Ljava/lang/String;

.field private final SEARCH_NO_RESULTS:Ljava/lang/String;

.field private final SET_AUTOPLAY:Ljava/lang/String;

.field private final SET_AUTOPLAY_ERROR:Ljava/lang/String;

.field private final SHARE_BY_EMAIL:Ljava/lang/String;

.field private final SHARE_BY_FB:Ljava/lang/String;

.field private final UNSET_AUTOPLAY:Ljava/lang/String;

.field private final UNSET_AUTOPLAY_ERROR:Ljava/lang/String;

.field private final WHATS_ON:Ljava/lang/String;

.field private adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

.field private callStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;",
            ">;"
        }
    .end annotation
.end field

.field private controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

.field private currentCity:Ljava/lang/String;

.field private currentLocationIndex:J

.field private currentStateId:J

.field private currentSubFormatId:J

.field private currentSubFormatName:Ljava/lang/String;

.field private cursorsSections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

.field private final header:Landroid/view/View;

.field private isFromLocation:Z

.field private itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private itemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private listNavigation:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteDialog:Landroid/app/AlertDialog;

.field private stationTitle:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRListView$DisplayedList()[I
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRListView$DisplayedList:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->values()[Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBFORMAT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRListView$DisplayedList:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedCallletters:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedIdentifier:Ljava/lang/String;

    .line 101
    const-string v0, "Personalities"

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    .line 112
    const-string v0, "COMMERCIAL FREE"

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controllerTabView"    # Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .param p3, "header"    # Landroid/view/View;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->isFromLocation:Z

    .line 145
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    .line 158
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->itemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 591
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 747
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    .line 750
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    .line 752
    const v0, 0x7f07001a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->ADD_FAVORITE:Ljava/lang/String;

    .line 753
    const v0, 0x7f07003f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FAVORITE_NOT_LOGGED_IN:Ljava/lang/String;

    .line 754
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->AUTOPLAY_DISABLED:Ljava/lang/String;

    .line 755
    const v0, 0x7f07002b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->AUTOPLAY_ENABLED:Ljava/lang/String;

    .line 756
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SET_AUTOPLAY:Ljava/lang/String;

    .line 757
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SET_AUTOPLAY_ERROR:Ljava/lang/String;

    .line 758
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->UNSET_AUTOPLAY:Ljava/lang/String;

    .line 759
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->UNSET_AUTOPLAY_ERROR:Ljava/lang/String;

    .line 760
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->WHATS_ON:Ljava/lang/String;

    .line 761
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->LISTEN:Ljava/lang/String;

    .line 762
    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE:Ljava/lang/String;

    .line 763
    const v0, 0x7f07001d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE_ERROR:Ljava/lang/String;

    .line 764
    const v0, 0x7f07001e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE_CANCEL:Ljava/lang/String;

    .line 765
    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE_NOFAVORITE:Ljava/lang/String;

    .line 766
    const v0, 0x7f07000d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FAVORITE_REMOVED:Ljava/lang/String;

    .line 767
    const v0, 0x7f07000b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FAVORITE_ADDED:Ljava/lang/String;

    .line 768
    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SHARE_BY_FB:Ljava/lang/String;

    .line 769
    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SHARE_BY_EMAIL:Ljava/lang/String;

    .line 770
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SEARCH_NO_RESULTS:Ljava/lang/String;

    .line 772
    const v0, 0x7f070040

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_MUSIC:Ljava/lang/String;

    .line 773
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_NEWS:Ljava/lang/String;

    .line 774
    const v0, 0x7f070042

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SPORT:Ljava/lang/String;

    .line 775
    const v0, 0x7f070043

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_LOCATION:Ljava/lang/String;

    .line 776
    const v0, 0x7f070044

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_HOST:Ljava/lang/String;

    .line 777
    const v0, 0x7f070045

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SUBSCRIPTION:Ljava/lang/String;

    .line 778
    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SURPRISEME:Ljava/lang/String;

    .line 779
    const v0, 0x7f070047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_RECENTS:Ljava/lang/String;

    .line 782
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 783
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->itemSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 784
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 785
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 787
    sput-object p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 788
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->WHATS_ON:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->LISTEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SHARE_BY_FB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SHARE_BY_EMAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->ADD_FAVORITE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$19(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->UNSET_AUTOPLAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_MUSIC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SET_AUTOPLAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FAVORITE_REMOVED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/db/DataHelper;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    return-object v0
.end method

.method static synthetic access$24(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FAVORITE_ADDED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->AUTOPLAY_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SET_AUTOPLAY_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->AUTOPLAY_DISABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->UNSET_AUTOPLAY_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->REMOVE_FAVORITE_CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_NEWS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SPORT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_LOCATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_HOST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SUBSCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SURPRISEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_RECENTS:Ljava/lang/String;

    return-object v0
.end method

.method private displayFavoritesSongsUntracable()V
    .locals 10

    .prologue
    .line 1257
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorFavouriteSongs()Landroid/database/Cursor;

    move-result-object v3

    .line 1259
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 1265
    .local v5, "to":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v2, 0x7f090046

    aput v2, v6, v1

    .line 1267
    .local v6, "hiddenItem":[I
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;

    .line 1268
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000c

    .line 1269
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "song"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "artist"

    aput-object v9, v4, v8

    .line 1267
    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I)V

    .line 1271
    .local v0, "cursorAdapter":Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .end local v0    # "cursorAdapter":Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "to":[I
    .end local v6    # "hiddenItem":[I
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_1

    .line 1281
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1285
    :cond_1
    return-void

    .line 1274
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1275
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1261
    :array_0
    .array-data 4
        0x7f090047
        0x7f090048
    .end array-data
.end method

.method private displayFavoritesStationsUntracable()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1186
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getSelectedTab()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAVORITES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorFavouriteStations()Landroid/database/Cursor;

    move-result-object v3

    .line 1217
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 1223
    .local v5, "to":[I
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;

    .line 1224
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000c

    .line 1225
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "name"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "description"

    aput-object v8, v4, v6

    const/4 v6, 0x0

    .line 1223
    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I)V

    .line 1230
    .local v0, "cursorAdapter":Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    .end local v0    # "cursorAdapter":Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "to":[I
    :goto_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_0

    .line 1238
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1234
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1219
    nop

    :array_0
    .array-data 4
        0x7f090047
        0x7f090048
    .end array-data
.end method

.method private displayShortcutGenreUntracable(Ljava/lang/String;)V
    .locals 11
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 972
    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 976
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->isFromLocation:Z

    .line 978
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v7, p1}, Lcom/clearchannel/iheartradio/db/DataHelper;->getFormatID(Ljava/lang/String;)J

    move-result-wide v3

    .line 981
    .local v3, "formatId":J
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatName:Ljava/lang/String;

    .line 982
    iput-wide v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatId:J

    .line 987
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isSortedByName()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 988
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v4, v8, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 989
    .local v0, "cursorStation":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 996
    .local v1, "cursorStationCommercialFree":Landroid/database/Cursor;
    :goto_0
    const/4 v6, 0x0

    .line 999
    .local v6, "nbStationLocal":I
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1001
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->LOCAL:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {p0, v7, p1, v8}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillLocalStationInSection(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)I

    .line 1006
    :cond_0
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v5

    .line 1009
    .local v5, "nbStation":I
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    invoke-virtual {p0, v7, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 1013
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1014
    sget-object v7, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v9, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v8, v3, v4, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStatesByFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStatesInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1018
    :cond_1
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v7, v8, :cond_3

    .line 1019
    :cond_2
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v8, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1023
    :cond_3
    if-le v5, v10, :cond_5

    .line 1024
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1033
    .end local v0    # "cursorStation":Landroid/database/Cursor;
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "formatId":J
    .end local v5    # "nbStation":I
    .end local v6    # "nbStationLocal":I
    :goto_1
    return-void

    .line 991
    .restart local v3    # "formatId":J
    :cond_4
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v4, v8, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 992
    .restart local v0    # "cursorStation":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    goto :goto_0

    .line 1026
    .restart local v5    # "nbStation":I
    .restart local v6    # "nbStationLocal":I
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1030
    .end local v0    # "cursorStation":Landroid/database/Cursor;
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "formatId":J
    .end local v5    # "nbStation":I
    .end local v6    # "nbStationLocal":I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1031
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private displayStationsByStateAndFormatUntracable(JLjava/lang/String;J)V
    .locals 16
    .param p1, "stateID"    # J
    .param p3, "stateName"    # Ljava/lang/String;
    .param p4, "formatID"    # J

    .prologue
    .line 1045
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentStateId:J

    .line 1046
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatId:J

    .line 1047
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 1051
    const/4 v10, 0x0

    .line 1054
    .local v10, "cursorStation":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isSortedByName()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v10

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v11

    .line 1064
    .local v11, "cursorStationCommercialFree":Landroid/database/Cursor;
    :goto_0
    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v14

    .line 1067
    .local v14, "nbStation":I
    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    move-object v3, v0

    sget-object v4, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getStateName(J)Ljava/lang/String;

    move-result-object v15

    .line 1076
    .local v15, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getFormatName(J)Ljava/lang/String;

    move-result-object v13

    .line 1079
    .local v13, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->isFromLocation:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 1080
    const/4 v3, 0x1

    if-le v14, v3, :cond_1

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1097
    .end local v11    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v13    # "format":Ljava/lang/String;
    .end local v14    # "nbStation":I
    .end local v15    # "state":Ljava/lang/String;
    :goto_1
    return-void

    .line 1059
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v10

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object v3, v0

    sget-object v8, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v9, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsByStateAndFormat(JJLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v11

    .restart local v11    # "cursorStationCommercialFree":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1083
    .restart local v13    # "format":Ljava/lang/String;
    .restart local v14    # "nbStation":I
    .restart local v15    # "state":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1093
    .end local v11    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v13    # "format":Ljava/lang/String;
    .end local v14    # "nbStation":I
    .end local v15    # "state":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 1094
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1086
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .restart local v13    # "format":Ljava/lang/String;
    .restart local v14    # "nbStation":I
    .restart local v15    # "state":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-le v14, v3, :cond_3

    .line 1087
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1089
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private displayStationsCityUntracable(JLjava/lang/String;)V
    .locals 8
    .param p1, "cityId"    # J
    .param p3, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1138
    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 1141
    const/4 v0, 0x0

    .line 1144
    .local v0, "cursorStation":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isSortedByName()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1145
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v5, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1146
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v5, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 1155
    .local v1, "cursorStationCommercialFree":Landroid/database/Cursor;
    :goto_0
    sget-object v4, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3

    .line 1158
    .local v3, "nbStation":I
    sget-object v4, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 1163
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1164
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v4, v5, :cond_1

    .line 1165
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1168
    :cond_1
    if-le v3, v7, :cond_3

    .line 1169
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1178
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "nbStation":I
    :goto_1
    return-void

    .line 1149
    :cond_2
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v5, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1150
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v5, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsCity(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    goto :goto_0

    .line 1171
    .restart local v3    # "nbStation":I
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0, p3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1174
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "nbStation":I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private displayStationsSearchUntracable(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)I
    .locals 5
    .param p1, "searchCriteria"    # Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    .param p2, "searchedValue"    # Ljava/lang/String;

    .prologue
    .line 1343
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v2, p1, p2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursoStationsSearchBy(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1345
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1348
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-virtual {p0, v3, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 1350
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v2, v3, :cond_2

    .line 1351
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1354
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1359
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 1355
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1356
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1359
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private displaySubLocationUntracable(J)V
    .locals 4
    .param p1, "stateID"    # J

    .prologue
    const/4 v1, 0x1

    .line 1106
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 1109
    :try_start_0
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentStateId:J

    .line 1111
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->CITIES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v2, p1, p2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorCities(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillCitiesInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1113
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v2, p1, p2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorFormatByStates(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillFormatInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1115
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_1

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1120
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getStateName(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isASearchCriteria(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->values()[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 314
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 310
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->values()[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->name()Ljava/lang/String;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 311
    const/4 v1, 0x1

    goto :goto_1

    .line 309
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static lastDisplayedListType()Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearStationsListView(Z)V
    .locals 2
    .param p1, "removeHeader"    # Z

    .prologue
    .line 1500
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->removeAllSections()V

    .line 1502
    return-void
.end method

.method public displayCurrentList()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView;
    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->callWithoutTrace()V

    .line 1660
    :cond_0
    return-void
.end method

.method public displayFavoritesSongs()V
    .locals 3

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesSongsUntracable()V

    .line 1245
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayFavoritesSongs"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1246
    return-void
.end method

.method public displayFavoritesStations()V
    .locals 3

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayFavoritesStationsUntracable()V

    .line 1182
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayFavoritesStations"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method public displayGenres()V
    .locals 3

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayGenresUntracable()V

    .line 837
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayGenres"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 838
    return-void
.end method

.method public displayGenresUntracable()V
    .locals 4

    .prologue
    .line 842
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 845
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->isFromLocation:Z

    .line 847
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorAllFormats(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v0

    .line 849
    .local v0, "cur":Landroid/database/Cursor;
    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillFormatInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 851
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v2, v3, :cond_1

    .line 852
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0    # "cur":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 855
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayLocations()V
    .locals 3

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayLocationsUntracable()V

    .line 794
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayLocations"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 795
    return-void
.end method

.method public displayLocationsUntracable()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 800
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 803
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->isFromLocation:Z

    .line 805
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorAllStates(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStatesInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 807
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_1

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :cond_1
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayMagicMenu()V
    .locals 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayMagicMenuUntracable()V

    .line 820
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayMagicMenu"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 821
    return-void
.end method

.method public displayMagicMenuUntracable()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 823
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 824
    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_NEWS:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SPORT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_LOCATION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_HOST:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SUBSCRIPTION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 825
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_SURPRISEME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->MAGIC_LIST_MENU_RECENTS:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 827
    .local v0, "magicMenuList":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03000f

    const v4, 0x7f090042

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 829
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_1

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 832
    :cond_1
    return-void
.end method

.method public displayPreviousList()V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1641
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 1650
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView;
    :goto_0
    return-void

    .line 1644
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView;
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayFavoritesStations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView;
    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->callWithoutTrace()V

    goto :goto_0
.end method

.method public displayRecent()V
    .locals 3

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayRecentUntracable()V

    .line 862
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayRecent"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 863
    return-void
.end method

.method public displayRecentUntracable()V
    .locals 4

    .prologue
    .line 866
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->DESC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursor20Recent(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v0

    .line 870
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 872
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v2, v3, :cond_1

    .line 873
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 874
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :cond_1
    const-string v2, "RECENT"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 880
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayShortcutGenre(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenreUntracable(Ljava/lang/String;)V

    .line 964
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v1, "displayShortcutGenre"

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 965
    .local v0, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 967
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 968
    return-void
.end method

.method public displayStationsByStateAndFormat(JLjava/lang/String;J)V
    .locals 3
    .param p1, "stateID"    # J
    .param p3, "stateName"    # Ljava/lang/String;
    .param p4, "formatID"    # J

    .prologue
    .line 1036
    invoke-direct/range {p0 .. p5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsByStateAndFormatUntracable(JLjava/lang/String;J)V

    .line 1037
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v1, "displayStationsByStateAndFormat"

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 1038
    .local v0, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1039
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1040
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1041
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1042
    return-void
.end method

.method public displayStationsCity(JLjava/lang/String;)V
    .locals 3
    .param p1, "cityId"    # J
    .param p3, "cityName"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-direct {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsCityUntracable(JLjava/lang/String;)V

    .line 1132
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v1, "displayStationsCity"

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 1133
    .local v0, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1134
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1135
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1136
    return-void
.end method

.method public displayStationsSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchKeywords"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1321
    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "count":I
    sget-object v2, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->NAME:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-direct {p0, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsSearchUntracable(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1324
    sget-object v2, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->CALLLETTERS:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-direct {p0, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsSearchUntracable(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1325
    sget-object v2, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->GENRE:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-direct {p0, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsSearchUntracable(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1326
    sget-object v2, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->LOCATION:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-direct {p0, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsSearchUntracable(Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1329
    if-nez v0, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->SEARCH_NO_RESULTS:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1335
    :cond_0
    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayStationsSearch"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 1336
    .local v1, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1337
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1338
    return-void
.end method

.method public displaySubFormat(JLjava/lang/String;)V
    .locals 3
    .param p1, "formatID"    # J
    .param p3, "formatName"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-virtual {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displaySubFormatUntracable(JLjava/lang/String;)V

    .line 887
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v1, "displaySubFormat"

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 888
    .local v0, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 889
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 890
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method public displaySubFormatUntracable(JLjava/lang/String;)V
    .locals 9
    .param p1, "formatID"    # J
    .param p3, "formatName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 895
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 898
    :try_start_0
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatId:J

    .line 899
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatName:Ljava/lang/String;

    .line 905
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isSortedByName()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 906
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v6, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 907
    .local v0, "cursorStation":Landroid/database/Cursor;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v6, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 915
    .local v1, "cursorStationCommercialFree":Landroid/database/Cursor;
    :goto_0
    const/4 v4, 0x0

    .line 918
    .local v4, "nbStationLocal":I
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 920
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->LOCAL:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {p0, v5, p3, v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillLocalStationInSection(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)I

    move-result v4

    .line 924
    :cond_0
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v3

    .line 927
    .local v3, "nbStation":I
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I

    .line 931
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 932
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v7, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v6, p1, p2, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStatesByFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->fillStatesInSection(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 935
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v5, v6, :cond_3

    .line 936
    :cond_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 939
    :cond_3
    if-le v3, v8, :cond_5

    .line 940
    const/4 v5, 0x0

    invoke-virtual {p0, p3, v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 949
    .end local v0    # "cursorStation":Landroid/database/Cursor;
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "nbStation":I
    .end local v4    # "nbStationLocal":I
    :goto_1
    return-void

    .line 910
    :cond_4
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v6, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 911
    .restart local v0    # "cursorStation":Landroid/database/Cursor;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v6, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsFormat(JLcom/clearchannel/iheartradio/db/DataHelper$Sorting;Z)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    goto :goto_0

    .line 942
    .restart local v3    # "nbStation":I
    .restart local v4    # "nbStationLocal":I
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, p3, v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 946
    .end local v0    # "cursorStation":Landroid/database/Cursor;
    .end local v1    # "cursorStationCommercialFree":Landroid/database/Cursor;
    .end local v3    # "nbStation":I
    .end local v4    # "nbStationLocal":I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 947
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public displaySubLocation(J)V
    .locals 3
    .param p1, "stateID"    # J

    .prologue
    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displaySubLocationUntracable(J)V

    .line 1101
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v1, "displaySubLocation"

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    .line 1102
    .local v0, "mc":Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->addArg(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1103
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1104
    return-void
.end method

.method public displayVideos()V
    .locals 3

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayVideosUntracable()V

    .line 1289
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->callStack:Ljava/util/LinkedList;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;

    const-string v2, "displayVideos"

    invoke-direct {v1, p0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1290
    return-void
.end method

.method public displayVideosUntracable()V
    .locals 9

    .prologue
    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v2, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorAllVideos(Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v3

    .line 1296
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 1300
    .local v5, "to":[I
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;

    .line 1301
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000e

    .line 1302
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "name"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string v8, "description"

    aput-object v8, v4, v6

    move-object v6, p0

    .line 1300
    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/view/ViewGroup;)V

    .line 1304
    .local v0, "vidCursAdapter":Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1306
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v1, v2, :cond_1

    .line 1307
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->listNavigation:Ljava/util/LinkedList;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    .end local v0    # "vidCursAdapter":Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "to":[I
    :cond_1
    :goto_0
    return-void

    .line 1310
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1311
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1298
    :array_0
    .array-data 4
        0x7f09004a
        0x7f09004b
    .end array-data
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 115
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

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

    .line 116
    .local v0, "res":I
    return v0
.end method

.method public fillCitiesInSection(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "sectioName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x2

    .line 1422
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 1428
    .local v5, "to":[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 1429
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030010

    .line 1430
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "city"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "nbStations"

    aput-object v6, v4, v3

    move-object v3, p2

    .line 1428
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1432
    .local v0, "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 1433
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1436
    .end local v0    # "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    .end local v5    # "to":[I
    :cond_0
    return-void

    .line 1426
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method

.method public fillFormatInSection(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "sectioName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x2

    .line 1444
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 1449
    .local v5, "to":[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 1450
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030010

    .line 1451
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "format"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "nbStations"

    aput-object v6, v4, v3

    move-object v3, p2

    .line 1449
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1453
    .local v0, "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 1454
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1456
    .end local v0    # "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    .end local v5    # "to":[I
    :cond_0
    return-void

    .line 1447
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method

.method public fillLocalStationInSection(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)I
    .locals 10
    .param p1, "sectioName"    # Ljava/lang/String;
    .param p2, "formatName"    # Ljava/lang/String;
    .param p3, "sorting"    # Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x2

    .line 1467
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRLocal;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 1471
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v7, "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->mLocal:Lcom/clearchannel/iheartradio/model/IHRLocal;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRLocal;->getCallLetters()Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 1474
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1479
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 1480
    .local v5, "to":[I
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {v1, v7, p2, p3}, Lcom/clearchannel/iheartradio/db/DataHelper;->getCursorStationsByCalllettersAndFormat(Ljava/util/ArrayList;Ljava/lang/String;Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;)Landroid/database/Cursor;

    move-result-object v3

    .line 1482
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1486
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 1487
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000b

    .line 1488
    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "name"

    aput-object v8, v4, v9

    const/4 v8, 0x1

    const-string v9, "description"

    aput-object v9, v4, v8

    .line 1486
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1490
    .local v0, "cursorAdapter":Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 1491
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1493
    .end local v0    # "cursorAdapter":Landroid/widget/SimpleCursorAdapter;
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1495
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "to":[I
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return v1

    .line 1475
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "localStationsCallletters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move v1, v9

    .line 1495
    goto :goto_1

    .line 1479
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method

.method public fillStatesInSection(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "sectioName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x2

    .line 1399
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 1404
    .local v5, "to":[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 1405
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030010

    .line 1406
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "state"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "nbStations"

    aput-object v6, v4, v3

    move-object v3, p2

    .line 1404
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1408
    .local v0, "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 1409
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1411
    .end local v0    # "simpleCursorAdapter":Landroid/widget/SimpleCursorAdapter;
    .end local v5    # "to":[I
    :cond_0
    return-void

    .line 1402
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method

.method public fillStationsInSection(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 8
    .param p1, "sectioName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1370
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 1378
    .local v5, "to":[I
    const-string v6, "name"

    .line 1379
    .local v6, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->isSortedByName()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v6, "freqname"

    .line 1381
    :cond_0
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 1382
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000b

    .line 1383
    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v7, "description"

    aput-object v7, v4, v3

    move-object v3, p2

    .line 1381
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1385
    .local v0, "cursorAdapter":Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 1386
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->adapter:Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1387
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1390
    .end local v0    # "cursorAdapter":Landroid/widget/SimpleCursorAdapter;
    .end local v5    # "to":[I
    .end local v6    # "title":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    .line 1374
    nop

    :array_0
    .array-data 4
        0x7f090042
        0x7f090044
    .end array-data
.end method

.method public getController()Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1509
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1510
    .local v0, "consumed":Ljava/lang/Boolean;
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onSearchRequested()Z

    .line 1524
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    return v1

    .line 1513
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1514
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    .line 1519
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayPreviousList()V

    goto :goto_2

    .line 1522
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayCurrentList()V

    .line 152
    return-void
.end method

.method public removeStationHeader()V
    .locals 2

    .prologue
    .line 1528
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 1530
    return-void
.end method

.method public setContentList(JLjava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;)V
    .locals 12
    .param p1, "index"    # J
    .param p3, "sectionType"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    .prologue
    .line 323
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRListView$DisplayedList()[I

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 326
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displaySubLocation(J)V

    goto :goto_0

    .line 332
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 333
    iput-wide p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentLocationIndex:J

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentCity:Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v0

    if-ne p3, v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 338
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatName:Ljava/lang/String;

    .line 339
    iget-wide v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentStateId:J

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentLocationIndex:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsByStateAndFormat(JLjava/lang/String;J)V

    goto :goto_0

    .line 342
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->CITIES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 344
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentCity:Ljava/lang/String;

    .line 345
    iget-wide v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentLocationIndex:J

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentCity:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsCity(JLjava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 352
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 354
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 360
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v0

    if-ne p3, v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 362
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatId:J

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsByStateAndFormat(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 365
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 372
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v0

    if-ne p3, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 374
    .restart local v6    # "cursor":Landroid/database/Cursor;
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSubFormatId:J

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayStationsByStateAndFormat(JLjava/lang/String;J)V

    goto/16 :goto_0

    .line 382
    .end local v6    # "cursor":Landroid/database/Cursor;
    :pswitch_6
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getController()Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->hasConnectivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 387
    .restart local v6    # "cursor":Landroid/database/Cursor;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v7, "intentv":Landroid/content/Intent;
    const-string v0, "videourl"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, "url":Ljava/lang/String;
    const-string v0, "video"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v0, "class"

    const-class v1, Lcom/clearchannel/iheartradio/controller/IHRControllerVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->startController(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 395
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "intentv":Landroid/content/Intent;
    .end local v11    # "url":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getController()Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :pswitch_7
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 405
    .restart local v6    # "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 406
    .local v8, "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v10

    .line 407
    .local v10, "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    invoke-virtual {v10, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 408
    const-string v0, "callletters"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    const-string v1, "callletters"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 417
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "now":J
    .end local v10    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :pswitch_8
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->cursorsSections:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 418
    .restart local v6    # "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->controllerTabView:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    const-string v1, "callletters"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public setStationHeader(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hideSortFunction"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1535
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->stationTitle:Ljava/lang/String;

    .line 1537
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1538
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1540
    .local v0, "headerTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->stationTitle:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1542
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1568
    .end local v0    # "headerTitle":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 1544
    .restart local v0    # "headerTitle":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->stationTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1548
    .local v1, "menuButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$3;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$3;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    if-eqz p2, :cond_2

    .line 1557
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1563
    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1559
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method
