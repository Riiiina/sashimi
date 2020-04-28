.class Lcom/andoop/android/recommend/MoreDialog$2;
.super Ljava/lang/Object;
.source "MoreDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/recommend/MoreDialog;->initFirstGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/recommend/MoreDialog;

.field private final synthetic val$game:Lcom/andoop/android/common/GameData;


# direct methods
.method constructor <init>(Lcom/andoop/android/recommend/MoreDialog;Lcom/andoop/android/common/GameData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/recommend/MoreDialog$2;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    iput-object p2, p0, Lcom/andoop/android/recommend/MoreDialog$2;->val$game:Lcom/andoop/android/common/GameData;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/andoop/android/recommend/MoreDialog$2;->this$0:Lcom/andoop/android/recommend/MoreDialog;

    invoke-static {v0}, Lcom/andoop/android/recommend/MoreDialog;->access$0(Lcom/andoop/android/recommend/MoreDialog;)Lcom/andoop/android/engine/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/recommend/MoreDialog$2;->val$game:Lcom/andoop/android/common/GameData;

    iget-object v1, v1, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/andoop/android/common/Constant;->showApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 181
    return-void
.end method
