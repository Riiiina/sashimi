.class final Lcom/blueoxtech/sevenlittlewords/v;
.super Lcom/blueoxtech/sevenlittlewords/billing/a;


# instance fields
.field final synthetic a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-direct {p0, p1, p2}, Lcom/blueoxtech/sevenlittlewords/billing/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/b;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/b;-><init>(Lcom/blueoxtech/sevenlittlewords/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/blueoxtech/sevenlittlewords/billing/c;Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "product: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/blueoxtech/sevenlittlewords/billing/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/blueoxtech/sevenlittlewords/billing/d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/blueoxtech/sevenlittlewords/billing/d;)V
    .locals 4

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/d;->a:Lcom/blueoxtech/sevenlittlewords/billing/d;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastLicenseCheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->d(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Z

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/v;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a()V

    goto :goto_0
.end method
