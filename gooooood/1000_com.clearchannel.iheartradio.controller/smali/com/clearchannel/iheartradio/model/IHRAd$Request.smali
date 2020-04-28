.class public Lcom/clearchannel/iheartradio/model/IHRAd$Request;
.super Ljava/lang/Object;
.source "IHRAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Request"
.end annotation


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRAd;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRAd;I)V
    .locals 3
    .param p2, "type"    # I

    .prologue
    .line 227
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    .line 225
    const-string v0, "IHRAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created new request type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/clearchannel/iheartradio/model/IHRAd;->mContextPlayer:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IHRAd Request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 237
    :try_start_0
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&bannerHeight="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mBannerHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "params":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&bannerWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mBannerWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    const/16 v5, 0xb

    .line 257
    .local v5, "purpose":I
    :goto_1
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-virtual {v7, v5}, Lcom/clearchannel/iheartradio/model/IHRAd;->adURLForPurpose(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    const-string v7, "IHRAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v1

    .line 270
    .local v1, "data":[B
    if-eqz v1, :cond_1

    const/4 v7, 0x1

    array-length v8, v1

    if-ne v7, v8, :cond_1

    .line 271
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mNoAds:[J

    iget v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 274
    :cond_1
    new-instance v7, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;

    invoke-direct {v7, v1}, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;-><init>([B)V

    iget-object v3, v7, Lcom/clearchannel/iheartradio/model/IHRXMLHashtable;->mHashtable:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 276
    .local v3, "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v7, :pswitch_data_1

    .line 317
    .end local v1    # "data":[B
    .end local v3    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "params":Ljava/lang/String;
    .end local v5    # "purpose":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    monitor-enter v7

    .line 318
    :try_start_1
    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v9, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mRequestsInProgress:I

    iget v10, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    iput v9, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mRequestsInProgress:I

    .line 317
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 246
    :pswitch_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&largeHeight="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerLargeHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4    # "params":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&largeWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerLargeWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&smallHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerSmallHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&smallWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mPlayerSmallWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    const/16 v5, 0xc

    .line 252
    .restart local v5    # "purpose":I
    goto/16 :goto_1

    .line 278
    .restart local v1    # "data":[B
    .restart local v3    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v6    # "url":Ljava/lang/String;
    :pswitch_2
    const-string v7, "banner_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 280
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v1

    .line 281
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v7, "banner_image"

    invoke-virtual {v3, v7, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v7, "banner_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iput-object v3, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdBanner:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 287
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerBanner:Landroid/os/Handler;

    if-eqz v7, :cond_2

    .line 288
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerBanner:Landroid/os/Handler;

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerBanner:Landroid/os/Handler;

    sget v9, Lcom/clearchannel/iheartradio/model/IHRAd;->kMessageAdAcquired:I

    iget v10, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 313
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    .end local v3    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "params":Ljava/lang/String;
    .end local v5    # "purpose":I
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "IHRAd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    .restart local v3    # "hash":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v4    # "params":Ljava/lang/String;
    .restart local v5    # "purpose":I
    .restart local v6    # "url":Ljava/lang/String;
    :pswitch_3
    :try_start_3
    const-string v7, "large_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "url":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "url":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 294
    const-string v7, "small_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 296
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v1

    .line 297
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    const-string v7, "large_image"

    invoke-virtual {v3, v7, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v7, "large_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v7, "small_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/model/IHRHTTP;->fetchSynchronous(Ljava/lang/String;)[B

    move-result-object v1

    .line 302
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    const-string v7, "small_image"

    invoke-virtual {v3, v7, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v7, "small_ad"

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iput-object v3, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mAdPlayer:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 308
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerPlayer:Landroid/os/Handler;

    if-eqz v7, :cond_2

    .line 309
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v7, v7, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerPlayer:Landroid/os/Handler;

    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    iget-object v8, v8, Lcom/clearchannel/iheartradio/model/IHRAd;->mHandlerPlayer:Landroid/os/Handler;

    sget v9, Lcom/clearchannel/iheartradio/model/IHRAd;->kMessageAdAcquired:I

    iget v10, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->mType:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/clearchannel/iheartradio/model/IHRAd$Request;->this$0:Lcom/clearchannel/iheartradio/model/IHRAd;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 276
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
