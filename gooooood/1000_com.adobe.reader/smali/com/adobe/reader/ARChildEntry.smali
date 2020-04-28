.class public Lcom/adobe/reader/ARChildEntry;
.super Ljava/lang/Object;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mIsDirectory:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/reader/ARChildEntry;->mFileName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/adobe/reader/ARChildEntry;->mIsDirectory:Z

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARChildEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/reader/ARChildEntry;->mIsDirectory:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARChildEntry;->mFileName:Ljava/lang/String;

    return-void
.end method
