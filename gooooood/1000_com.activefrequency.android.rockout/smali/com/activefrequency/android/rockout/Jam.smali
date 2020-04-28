.class public Lcom/activefrequency/android/rockout/Jam;
.super Landroid/app/Activity;
.source "Jam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/activefrequency/android/rockout/Jam$JamView;
    }
.end annotation


# static fields
.field public static final LOCALYTICS_KEY:Ljava/lang/String; = "40ff33ea703a3d396817a-47108360a1c37-0-8a1acb-40280e1e9"

.field private static final MENU_ABOUT:I = 0x66

.field private static final MENU_GO_PRO:I = 0x67

.field private static final SONGS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/activefrequency/android/rockout/Song;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Jam"

.field public static final TAG_ABOUT_CLICKED:Ljava/lang/String; = "About clicked"

.field public static final TAG_GO_PRO_CLICKED:Ljava/lang/String; = "Go Pro clicked"


# instance fields
.field private localyticsSession:Lcom/Localytics/android/LocalyticsSession;

.field song:Lcom/activefrequency/android/rockout/Song;

.field songId:I

.field private touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

.field private v:Lcom/activefrequency/android/rockout/Jam$JamView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/activefrequency/android/rockout/Song;->makeSongs()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "showToast":Z
    if-eqz p1, :cond_0

    .line 128
    const-string v2, "songId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    .line 129
    const-string v2, "Jam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Restoring song: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v2, "showToast"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 133
    :cond_0
    iget v2, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    if-lt v2, v5, :cond_1

    iget v2, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    sget-object v3, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 134
    :cond_1
    iput v5, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    .line 136
    :cond_2
    sget-object v2, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    iget v3, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/activefrequency/android/rockout/Song;

    iput-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    .line 137
    new-instance v2, Lcom/activefrequency/android/rockout/Jam$JamView;

    iget-object v3, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    invoke-direct {v2, p0, v3}, Lcom/activefrequency/android/rockout/Jam$JamView;-><init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V

    iput-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    .line 138
    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    invoke-virtual {p0, v2}, Lcom/activefrequency/android/rockout/Jam;->setContentView(Landroid/view/View;)V

    .line 139
    new-instance v2, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    iget-object v3, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    invoke-direct {v2, p0, v3}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;-><init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V

    iput-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    .line 140
    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    iget-object v3, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v2, v3}, Lcom/activefrequency/android/rockout/Jam$JamView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    if-eqz v0, :cond_3

    .line 143
    const v2, 0x7f050004

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 144
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_3
    new-instance v2, Lcom/Localytics/android/LocalyticsSession;

    .line 147
    invoke-virtual {p0}, Lcom/activefrequency/android/rockout/Jam;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 148
    const-string v4, "40ff33ea703a3d396817a-47108360a1c37-0-8a1acb-40280e1e9"

    invoke-direct {v2, v3, v4}, Lcom/Localytics/android/LocalyticsSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iput-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    .line 150
    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v2}, Lcom/Localytics/android/LocalyticsSession;->open()V

    .line 151
    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v2}, Lcom/Localytics/android/LocalyticsSession;->upload()V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 51
    const-string v3, "Load Song"

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 52
    .local v2, "songsMenu":Landroid/view/SubMenu;
    const v3, 0x1080045

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 53
    sget-object v3, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 54
    .local v1, "numsongs":I
    const/4 v0, 0x0

    .end local p0    # "this":Lcom/activefrequency/android/rockout/Jam;
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 58
    const/16 v3, 0x66

    const-string v4, "About"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080041

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 59
    const/16 v3, 0x67

    const-string v4, "Go Pro!"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020001

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 62
    const/4 v3, 0x1

    return v3

    .line 55
    :cond_0
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/activefrequency/android/rockout/Song;

    iget-object v4, p0, Lcom/activefrequency/android/rockout/Song;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/Localytics/android/LocalyticsSession;->upload()V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 70
    .local v1, "id":I
    sget-object v5, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    if-lez v1, :cond_0

    .line 72
    sget-object v5, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    sub-int v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/activefrequency/android/rockout/Song;

    .line 73
    .local v4, "song":Lcom/activefrequency/android/rockout/Song;
    iget-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    invoke-virtual {v5, v4}, Lcom/activefrequency/android/rockout/Jam$JamView;->changeChords(Lcom/activefrequency/android/rockout/Song;)V

    .line 74
    iget-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v5}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->stop()V

    .line 75
    new-instance v5, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-direct {v5, p0, v4}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;-><init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V

    iput-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    .line 76
    iget-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    iget-object v6, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v5, v6}, Lcom/activefrequency/android/rockout/Jam$JamView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    iput v1, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    move v5, v7

    .line 119
    .end local v4    # "song":Lcom/activefrequency/android/rockout/Song;
    :goto_0
    return v5

    .line 80
    :cond_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    move v5, v7

    .line 119
    goto :goto_0

    .line 92
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f050001

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 94
    const/high16 v5, 0x7f050000

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    const v5, 0x1080041

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 96
    const-string v5, "Website"

    new-instance v6, Lcom/activefrequency/android/rockout/Jam$1;

    invoke-direct {v6, p0}, Lcom/activefrequency/android/rockout/Jam$1;-><init>(Lcom/activefrequency/android/rockout/Jam;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const-string v5, "OK"

    new-instance v6, Lcom/activefrequency/android/rockout/Jam$2;

    invoke-direct {v6, p0}, Lcom/activefrequency/android/rockout/Jam$2;-><init>(Lcom/activefrequency/android/rockout/Jam;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    iget-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v6, "About clicked"

    invoke-virtual {v5, v6}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    move v5, v7

    .line 112
    goto :goto_0

    .line 114
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-object v5, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v6, "Go Pro clicked"

    invoke-virtual {v5, v6}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 115
    const-string v5, "market://search?q=pub:\"Active Frequency\""

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 116
    .local v3, "marketUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v2, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/activefrequency/android/rockout/Jam;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v1}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->stop()V

    .line 163
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    invoke-virtual {v1, v2}, Lcom/activefrequency/android/rockout/Jam$JamView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iput-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/activefrequency/android/rockout/Jam;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "songId"

    iget v2, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "showToast"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v1}, Lcom/Localytics/android/LocalyticsSession;->close()V

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/activefrequency/android/rockout/Jam;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "songId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    .line 190
    iget v1, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    sget-object v2, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 191
    :cond_0
    iput v3, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    .line 193
    :cond_1
    sget-object v1, Lcom/activefrequency/android/rockout/Jam;->SONGS:Ljava/util/ArrayList;

    iget v2, p0, Lcom/activefrequency/android/rockout/Jam;->songId:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activefrequency/android/rockout/Song;

    iput-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    .line 194
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v1}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;->stop()V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    invoke-virtual {v1, v2}, Lcom/activefrequency/android/rockout/Jam$JamView;->changeChords(Lcom/activefrequency/android/rockout/Song;)V

    .line 198
    new-instance v1, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->song:Lcom/activefrequency/android/rockout/Song;

    invoke-direct {v1, p0, v2}, Lcom/activefrequency/android/rockout/SoundPoolTouchListener;-><init>(Landroid/content/Context;Lcom/activefrequency/android/rockout/Song;)V

    iput-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    .line 199
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam;->v:Lcom/activefrequency/android/rockout/Jam$JamView;

    iget-object v2, p0, Lcom/activefrequency/android/rockout/Jam;->touchListener:Lcom/activefrequency/android/rockout/SoundPoolTouchListener;

    invoke-virtual {v1, v2}, Lcom/activefrequency/android/rockout/Jam$JamView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method
