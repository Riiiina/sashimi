.class Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;
.super Ljava/lang/Object;
.source "BlurbDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->initialize(Landroid/app/Activity;Lcom/appspot/swisscodemonkeys/client/RatingsService;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sha_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstats/StatsTracker;->trackNoDouble(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "app":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://swisscodemonkeys.appspot.com/app/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "appUrl":Ljava/lang/String;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getInstance()Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    move-result-object v9

    .line 135
    .local v9, "defaults":Lcom/appspot/swisscodemonkeys/pickup/Defaults;
    const-string v0, "love"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v1, 0x7f070069

    const v2, 0x7f070068

    .line 137
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070066

    .line 138
    const-string v5, "http://love.topstuff.net/love/"

    .line 139
    const v7, 0x7f070065

    .line 136
    invoke-virtual/range {v0 .. v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->createSendIntent(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 150
    .local v10, "in":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void

    .line 140
    .end local v10    # "in":Landroid/content/Intent;
    :cond_0
    const-string v0, "pickup"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    const v1, 0x7f07001e

    const v2, 0x7f07003d

    .line 142
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07001f

    .line 143
    const-string v5, "http://jokes.topstuff.net/joke/"

    const v7, 0x7f07004c

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->createSendIntent(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .restart local v10    # "in":Landroid/content/Intent;
    goto :goto_0

    .line 145
    .end local v10    # "in":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getJokeSubjectDefault()I

    move-result v1

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getJokeFooterDefault()I

    move-result v2

    .line 146
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getJokeTitle()I

    move-result v4

    .line 147
    const-string v5, "http://jokes.topstuff.net/joke/"

    .line 148
    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->getJokeExtraLine()I

    move-result v7

    .line 145
    invoke-virtual/range {v0 .. v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbDetailsView;->createSendIntent(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .restart local v10    # "in":Landroid/content/Intent;
    goto :goto_0
.end method
