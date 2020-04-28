.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->val$text:Landroid/widget/EditText;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;)Lcom/appspot/swisscodemonkeys/pickup/Pickup;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->sanitizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "newLine":Ljava/lang/String;
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;->val$text:Landroid/widget/EditText;

    invoke-direct {v1, p0, v0, v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;Ljava/lang/String;Landroid/widget/EditText;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method
