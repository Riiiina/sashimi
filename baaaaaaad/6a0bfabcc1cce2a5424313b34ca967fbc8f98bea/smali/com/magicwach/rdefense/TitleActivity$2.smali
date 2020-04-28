.class Lcom/magicwach/rdefense/TitleActivity$2;
.super Ljava/lang/Object;
.source "TitleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magicwach/rdefense/TitleActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magicwach/rdefense/TitleActivity;


# direct methods
.method constructor <init>(Lcom/magicwach/rdefense/TitleActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/magicwach/rdefense/TitleActivity$2;->this$0:Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/magicwach/rdefense/TitleActivity$2;->this$0:Lcom/magicwach/rdefense/TitleActivity;

    invoke-static {v0}, Lcom/magicwach/rdefense/TitleActivity;->access$000(Lcom/magicwach/rdefense/TitleActivity;)V

    .line 82
    return-void
.end method
