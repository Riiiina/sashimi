.class public Lcom/adobe/reader/ARFileEntry;
.super Ljava/lang/Object;


# static fields
.field private static final ONE_KB:D = 1024.0

.field private static final ONE_MB:D = 1048576.0


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mIsDirectory:Z

.field private mModifiedDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/reader/ARFileEntry;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/reader/ARFileEntry;->mIsDirectory:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/reader/ARFileEntry;->mFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/reader/ARFileEntry;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/reader/ARFileEntry;->mIsDirectory:Z

    invoke-virtual {p0, p3, p4}, Lcom/adobe/reader/ARFileEntry;->setModifiedDate(J)V

    invoke-virtual {p0, p5, p6}, Lcom/adobe/reader/ARFileEntry;->setFileSize(J)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mModifiedDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/ARFileEntry;->mIsDirectory:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARFileEntry;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARFileEntry;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 5

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v1, p1

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    long-to-double v1, p1

    div-double/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mFileSize:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    long-to-double v1, p1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mFileSize:Ljava/lang/String;

    goto :goto_0
.end method

.method public setModifiedDate(J)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/reader/ARFileEntry;->mModifiedDate:Ljava/lang/String;

    return-void
.end method
