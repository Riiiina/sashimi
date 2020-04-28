.class public Lcom/andoop/android/common/GameData;
.super Ljava/lang/Object;
.source "GameData.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final PKG_NAME:Ljava/lang/String; = "pkg_name"


# instance fields
.field public desc:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public pkg_name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v1, p0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v1, p0, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v1, p0, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v1, p0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 4
    return-void
.end method
