.class final Lcom/blueoxtech/sevenlittlewords/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;


# direct methods
.method constructor <init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/m;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/m;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    move-result-object v0

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/p;->b()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/m;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->finish()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/m;->a:Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;

    invoke-virtual {v0, v1, v1}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->overridePendingTransition(II)V

    return-void
.end method
