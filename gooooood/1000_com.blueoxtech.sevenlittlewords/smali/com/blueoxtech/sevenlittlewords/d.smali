.class final Lcom/blueoxtech/sevenlittlewords/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/o;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/o;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastZoneNamePlayed"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/o;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    const-class v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "zone"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "zoneName"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-virtual {v1, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/d;->a:Lcom/blueoxtech/sevenlittlewords/o;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/o;->c:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-virtual {v0, v3, v3}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->overridePendingTransition(II)V

    return-void
.end method
