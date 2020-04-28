.class public Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
.super Ljava/lang/Object;
.source "IHRPremiumCredentials.java"


# static fields
.field public static final kFlattenKeys:[Ljava/lang/String;

.field public static final kPreferenceKeyPremiumCredentials:J = 0x4948525043726564L

.field public static final kSiteMailerDelegate:Ljava/lang/String; = "mailer_delegate"

.field public static final keyCredentials:Ljava/lang/String; = "credentials"

.field public static final keyExpiring:Ljava/lang/String; = "expiring"

.field public static final keyPassword:Ljava/lang/String; = "password"

.field public static final keyProposed:Ljava/lang/String; = "proposed"

.field public static final keyUsername:Ljava/lang/String; = "username"

.field public static sShared:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;


# instance fields
.field _externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field _internals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public sPatternDigestNonce:Ljava/util/regex/Pattern;

.field public sPatternDigestRealm:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "expiring"

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->kFlattenKeys:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "nonce=\"([^\"]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->sPatternDigestNonce:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "realm=\"([^\"]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->sPatternDigestRealm:Ljava/util/regex/Pattern;

    .line 15
    return-void
.end method

.method public static authorizationBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inUsername"    # Ljava/lang/String;
    .param p1, "inPassword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 216
    const/4 v1, 0x0

    .line 219
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 220
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-static {v0, v4, v2, v4}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([BIII)[B

    move-result-object v0

    .line 223
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 5

    .prologue
    .line 58
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v1, :cond_0

    .line 60
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v2, "PremiumCredentials"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "flat":Ljava/lang/String;
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v2, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->kFlattenKeys:[Ljava/lang/String;

    const-string v3, "\t"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->restoreDDS([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 72
    .end local v0    # "flat":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    return-object v1
.end method

.method private getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_internals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_internals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_internals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    return-object v0
.end method

.method private save()V
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->_externals:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v2, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->kFlattenKeys:[Ljava/lang/String;

    const-string v3, "\t"

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->flattenDDS([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "flat":Ljava/lang/String;
    sget-object v1, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    const-string v2, "PremiumCredentials"

    invoke-virtual {v1, v2, v0}, Lcom/clearchannel/iheartradio/android/services/IHRService;->preferencesPut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    .end local v0    # "flat":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->g:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/services/IHRService;->mCredentials:Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inAccepted"    # Z

    .prologue
    const/4 v8, 0x0

    .line 383
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    .line 384
    .local v3, "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v3, :cond_6

    move-object v2, v8

    .line 385
    .local v2, "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    if-nez v2, :cond_7

    move-object v5, v8

    .line 387
    .local v5, "proposed":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_0

    if-eqz v5, :cond_5

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 389
    .local v1, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_8

    move-object v0, v8

    .line 391
    .local v0, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_2
    const/4 v6, 0x0

    .line 392
    .local v6, "username":Ljava/lang/String;
    const/4 v4, 0x0

    .line 394
    .local v4, "password":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 395
    const-string v7, "username"

    invoke-virtual {v2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "username":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 396
    .restart local v6    # "username":Ljava/lang/String;
    const-string v7, "password"

    invoke-virtual {v2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "password":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 399
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 400
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 403
    .restart local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 404
    :cond_3
    const-string v7, "username"

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 410
    :cond_4
    const-string v7, "password"

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v7, "expiring"

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_4
    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    .line 420
    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v1    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :cond_5
    return-void

    .line 384
    .end local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v5    # "proposed":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v2, v7

    goto :goto_0

    .line 385
    .restart local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_7
    const-string v7, "proposed"

    invoke-virtual {v2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    goto :goto_1

    .line 389
    .restart local v1    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v5    # "proposed":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v0, v7

    goto :goto_2

    .line 406
    .restart local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "username":Ljava/lang/String;
    :cond_9
    const-string v7, "username"

    invoke-virtual {v0, v7, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 413
    :cond_a
    const-string v7, "password"

    invoke-virtual {v0, v7, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public credentials(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 263
    if-nez p1, :cond_0

    move-object v8, v9

    .line 313
    :goto_0
    return-object v8

    .line 265
    :cond_0
    const/4 v6, 0x0

    .line 267
    .local v6, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v4

    .line 268
    .local v4, "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v4, :cond_7

    move-object v3, v9

    .line 270
    .local v3, "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_1
    if-eqz v3, :cond_1

    .line 271
    const-string v8, "credentials"

    invoke-virtual {v3, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "result":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 274
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_5

    .line 275
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 276
    .local v2, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v2, :cond_8

    move-object v1, v9

    .line 277
    .local v1, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_2
    const/4 v7, 0x0

    .line 278
    .local v7, "username":Ljava/lang/String;
    const/4 v5, 0x0

    .line 279
    .local v5, "password":Ljava/lang/String;
    const/4 v0, 0x0

    .line 281
    .local v0, "expiring":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 282
    const-string v8, "username"

    invoke-virtual {v1, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "username":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 283
    .restart local v7    # "username":Ljava/lang/String;
    const-string v8, "password"

    invoke-virtual {v1, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "password":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 284
    .restart local v5    # "password":Ljava/lang/String;
    const-string v8, "expiring"

    invoke-virtual {v1, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "expiring":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 287
    .restart local v0    # "expiring":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 288
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    .line 291
    const/4 v5, 0x0

    .line 294
    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 295
    invoke-static {v7, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->authorizationBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    if-eqz v6, :cond_5

    .line 298
    if-nez v3, :cond_4

    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v3    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 300
    .restart local v3    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_4
    const-string v8, "proposed"

    invoke-virtual {v3, v8}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v8, "credentials"

    invoke-virtual {v3, v8, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v8, "username"

    invoke-virtual {v3, v8, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v8, "password"

    invoke-virtual {v3, v8, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v0    # "expiring":Ljava/lang/String;
    .end local v1    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v5    # "password":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    const-string v8, "mailer_delegate"

    if-ne p1, v8, :cond_6

    .line 310
    const-string v8, "iheartmailer"

    const-string v9, "4qe892o"

    invoke-static {v8, v9}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->authorizationBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    move-object v8, v6

    .line 313
    goto/16 :goto_0

    .line 268
    .end local v3    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_7
    invoke-virtual {v4, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v3, v8

    goto/16 :goto_1

    .line 276
    .restart local v2    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v3    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_8
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v1, v8

    goto :goto_2
.end method

.method public digestCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "challenge"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    .local v3, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v3, :cond_0

    const/4 v13, 0x0

    .line 259
    :goto_0
    return-object v13

    .line 237
    :cond_0
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .local v2, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v2, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 239
    :cond_1
    const-string v13, "username"

    invoke-virtual {v2, v13}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "username":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 240
    :cond_3
    const-string v13, "password"

    invoke-virtual {v2, v13}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "password":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 242
    :cond_5
    iget-object v13, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->sPatternDigestNonce:Ljava/util/regex/Pattern;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .local v7, "match":Ljava/util/regex/Matcher;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 243
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "nonce":Ljava/lang/String;
    if-nez v8, :cond_8

    const/4 v13, 0x0

    goto :goto_0

    .line 245
    :cond_8
    iget-object v13, p0, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->sPatternDigestRealm:Ljava/util/regex/Pattern;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    const/4 v13, 0x0

    goto :goto_0

    .line 246
    :cond_a
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "realm":Ljava/lang/String;
    if-nez v10, :cond_b

    const/4 v13, 0x0

    goto :goto_0

    .line 248
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "ha1":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "ha2":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "ha3":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Digest username=\""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 254
    const-string v14, "realm=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 255
    const-string v14, "nonce=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 256
    const-string v14, "uri=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 257
    const-string v14, "response=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 252
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "response":Ljava/lang/String;
    move-object v13, v11

    .line 259
    goto/16 :goto_0
.end method

.method public hasAnyAuthenticated()Z
    .locals 7

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 117
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 123
    .local v1, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    :goto_0
    return v3

    .line 123
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "site":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 129
    .local v0, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v0, :cond_2

    const/4 v6, 0x0

    move-object v2, v6

    .line 131
    .local v2, "password":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 132
    const-string v6, "expiring"

    invoke-virtual {v0, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    const/4 v3, 0x1

    .line 136
    goto :goto_0

    .line 129
    .end local v2    # "password":Ljava/lang/String;
    :cond_2
    const-string v6, "password"

    invoke-virtual {v0, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_1
.end method

.method public hasAuthenticated(Ljava/lang/String;)Z
    .locals 6
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 99
    .local v2, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v2, :cond_1

    move-object v1, v5

    .line 100
    .local v1, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    if-nez v1, :cond_2

    move-object v3, v5

    .line 101
    .local v3, "password":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_3

    move-object v0, v5

    .line 103
    .local v0, "expiring":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    .line 107
    const/4 v3, 0x0

    .line 110
    :cond_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    return v4

    .line 99
    .end local v0    # "expiring":Ljava/lang/String;
    .end local v1    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v3    # "password":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v1, v4

    goto :goto_0

    .line 100
    .restart local v1    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_2
    const-string v4, "password"

    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_1

    .line 101
    .restart local v3    # "password":Ljava/lang/String;
    :cond_3
    const-string v4, "expiring"

    invoke-virtual {v1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_2

    .line 110
    .restart local v0    # "expiring":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public hasCredentials(Ljava/lang/String;)Z
    .locals 3
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 91
    .local v1, "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    .line 93
    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .local v0, "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "credentials"

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 91
    .end local v0    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :cond_1
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v0, p0

    goto :goto_0

    .line 93
    .restart local v0    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isUsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inUsername"    # Ljava/lang/String;
    .param p3, "inPassword"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 146
    const/4 v5, 0x0

    .line 148
    .local v5, "result":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    .line 150
    .local v3, "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v3, :cond_2

    move-object v2, v8

    .line 151
    .local v2, "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 152
    .local v1, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_3

    move-object v0, v8

    .line 157
    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .local v0, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_1
    if-eqz v2, :cond_0

    .line 158
    const-string v7, "username"

    invoke-virtual {v2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 159
    .local v6, "username":Ljava/lang/String;
    const-string v7, "password"

    invoke-virtual {v2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    .local v4, "password":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    const/4 v5, 0x1

    .line 166
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 167
    const-string v7, "username"

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    .restart local v6    # "username":Ljava/lang/String;
    const-string v7, "password"

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 170
    .restart local v4    # "password":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const/4 v5, 0x1

    .line 176
    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v1    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v3    # "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :cond_1
    return v5

    .line 150
    .restart local v3    # "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :cond_2
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v2, v7

    goto :goto_0

    .line 152
    .restart local v1    # "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v0, p0

    goto :goto_1
.end method

.method public onCreate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inOwner"    # Ljava/lang/Object;

    .prologue
    .line 423
    return-void
.end method

.method public onDestroy(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inOwner"    # Ljava/lang/Object;

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    return-void
.end method

.method public propose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inUsername"    # Ljava/lang/String;
    .param p3, "inPassword"    # Ljava/lang/String;
    .param p4, "inExpiring"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 318
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getInternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    .line 319
    .local v3, "internals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 320
    .local v1, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v3, :cond_1

    move-object v2, v6

    .line 321
    .local v2, "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    if-nez v1, :cond_2

    move-object v0, v6

    .line 323
    .local v0, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_1
    const/4 v4, 0x0

    .line 325
    .local v4, "password":Ljava/lang/String;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 326
    invoke-static {p4}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->isExpired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    :cond_0
    :goto_2
    return-void

    .line 320
    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v4    # "password":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v2, v5

    goto :goto_0

    .line 321
    .restart local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_2
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v0, v5

    goto :goto_1

    .line 328
    .restart local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_7

    move-object v4, v6

    .line 329
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "expiring"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 331
    :cond_4
    if-nez v2, :cond_8

    move-object v4, v6

    .line 332
    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "expiring"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 335
    :cond_5
    if-nez v0, :cond_6

    .line 336
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 337
    .restart local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_6
    if-eqz p4, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 341
    const-string v5, "username"

    invoke-virtual {v0, v5, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v5, "password"

    invoke-virtual {v0, v5, p3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v5, "expiring"

    invoke-virtual {v0, v5, p4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v1, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    goto :goto_2

    .line 328
    :cond_7
    const-string v5, "password"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    goto :goto_3

    .line 331
    :cond_8
    const-string v5, "password"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    goto :goto_4

    .line 351
    :cond_9
    if-nez v2, :cond_a

    .line 352
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .end local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 353
    .restart local v2    # "internal":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-virtual {v3, p1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_a
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    .line 357
    const-string v5, "proposed"

    const-string v6, "1"

    invoke-virtual {v2, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v5, "password"

    invoke-virtual {v2, v5, p3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v5, "credentials"

    invoke-static {p2, p3}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->authorizationBasic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :goto_5
    if-eqz p2, :cond_c

    .line 367
    const-string v5, "username"

    invoke-virtual {v2, v5, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v5, "username"

    invoke-virtual {v0, v5, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_6
    const-string v5, "password"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 375
    const-string v5, "password"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v5, "expiring"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->save()V

    goto/16 :goto_2

    .line 361
    :cond_b
    const-string v5, "proposed"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v5, "password"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v5, "credentials"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 370
    :cond_c
    const-string v5, "username"

    invoke-virtual {v2, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v5, "username"

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public username(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->getExternals()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v1

    .line 182
    .local v1, "externals":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 184
    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    .local v0, "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v2

    .line 182
    .end local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-object v0, p0

    goto :goto_0

    .line 184
    .restart local v0    # "external":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    :cond_1
    const-string v2, "username"

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_1
.end method
