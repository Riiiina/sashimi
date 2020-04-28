.class public Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0, v0, v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "puzzle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/blueoxtech/sevenlittlewords/s;

    invoke-direct {v3, p0, v2, v1}, Lcom/blueoxtech/sevenlittlewords/s;-><init>(Lcom/blueoxtech/sevenlittlewords/InstructionsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
