.class public Lcmn/SoundStore;
.super Landroid/widget/BaseAdapter;
.source "SoundStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/SoundStore$SoundEntry;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcmn/SoundStore$SoundEntry;",
            ">;"
        }
    .end annotation
.end field

.field private itemLayoutID:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "itemLayoutID"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    .line 100
    iput p1, p0, Lcmn/SoundStore;->itemLayoutID:I

    .line 101
    iput-object p2, p0, Lcmn/SoundStore;->context:Landroid/content/Context;

    .line 102
    return-void
.end method

.method protected static final getMediaPlayer(Landroid/content/Context;Lcmn/SoundStore$SoundEntry;)Landroid/media/MediaPlayer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcmn/SoundStore$SoundEntry;

    .prologue
    const/4 v2, 0x2

    .line 28
    iget-object v1, p1, Lcmn/SoundStore$SoundEntry;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 30
    .local v0, "mp":Landroid/media/MediaPlayer;
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 32
    :try_start_0
    iget-object v1, p1, Lcmn/SoundStore$SoundEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 33
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v8, v0

    .line 49
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .local v8, "mp":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 34
    .end local v8    # "mp":Ljava/lang/Object;
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 35
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 40
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 42
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcmn/SoundStore$SoundEntry;->resid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 43
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 45
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    move-object v8, v0

    .line 49
    .restart local v8    # "mp":Ljava/lang/Object;
    goto :goto_1

    .line 46
    .end local v8    # "mp":Ljava/lang/Object;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 47
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public addSound(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resid"    # I

    .prologue
    .line 113
    new-instance v0, Lcmn/SoundStore$SoundEntry;

    invoke-direct {v0, p1, p2}, Lcmn/SoundStore$SoundEntry;-><init>(Ljava/lang/String;I)V

    .line 114
    .local v0, "entry":Lcmn/SoundStore$SoundEntry;
    iget-object v1, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lcmn/SoundStore;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public addSound(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    new-instance v0, Lcmn/SoundStore$SoundEntry;

    invoke-direct {v0, p1, p2}, Lcmn/SoundStore$SoundEntry;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v0, "entry":Lcmn/SoundStore$SoundEntry;
    iget-object v1, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcmn/SoundStore;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SoundStore;
    check-cast p0, Lcmn/SoundStore$SoundEntry;

    iget-object v0, p0, Lcmn/SoundStore$SoundEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 164
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSoundResource(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SoundStore;
    check-cast p0, Lcmn/SoundStore$SoundEntry;

    iget v0, p0, Lcmn/SoundStore$SoundEntry;->resid:I

    return v0
.end method

.method public getSoundTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SoundStore;
    check-cast p0, Lcmn/SoundStore$SoundEntry;

    iget-object v0, p0, Lcmn/SoundStore$SoundEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcmn/SoundStore;->itemLayoutID:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    .local v1, "view":Landroid/widget/TextView;
    iget-object v2, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SoundStore;
    check-cast p0, Lcmn/SoundStore$SoundEntry;

    iget-object v2, p0, Lcmn/SoundStore$SoundEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-object v1
.end method

.method public playSound(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcmn/SoundStore;->playSound(IZ)V

    .line 134
    return-void
.end method

.method public playSound(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmn/SoundStore$SoundEntry;

    iget-object v1, p0, Lcmn/SoundStore;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcmn/SoundStore$SoundEntry;->play(Landroid/content/Context;Z)V

    .line 146
    return-void
.end method

.method public preload(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v2, p0, Lcmn/SoundStore;->context:Landroid/content/Context;

    iget-object v1, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcmn/SoundStore$SoundEntry;

    invoke-static {v2, v1}, Lcmn/SoundStore;->getMediaPlayer(Landroid/content/Context;Lcmn/SoundStore$SoundEntry;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 122
    .local v0, "mp":Landroid/media/MediaPlayer;
    new-instance v1, Lcmn/SoundStore$1;

    invoke-direct {v1, p0}, Lcmn/SoundStore$1;-><init>(Lcmn/SoundStore;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 130
    return-void
.end method

.method public stop(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcmn/SoundStore;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SoundStore;
    check-cast p0, Lcmn/SoundStore$SoundEntry;

    invoke-virtual {p0}, Lcmn/SoundStore$SoundEntry;->stop()V

    .line 150
    return-void
.end method
