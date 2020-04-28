.class public Lcom/adobe/reader/AESCryptor;
.super Ljava/lang/Object;


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final DECRYPTOR_TRANSFORMATION:Ljava/lang/String; = "AES/ECB/NoPadding"

.field private static final ENCRYPTOR_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/NoPadding"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Decrypt([BI[B)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/AESCryptor;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public Encrypt([BI[BI)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/adobe/reader/AESCryptor;->mEncryptor:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    if-ge p4, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/reader/AESCryptor;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public Init_Decryptor([B)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/AESCryptor;->mDecryptor:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/adobe/reader/AESCryptor;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adobe/reader/AESCryptor;->mDecryptor:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Init_Encryptor([B[B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/reader/AESCryptor;->mEncryptor:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v2, p0, Lcom/adobe/reader/AESCryptor;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adobe/reader/AESCryptor;->mEncryptor:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_0
.end method
