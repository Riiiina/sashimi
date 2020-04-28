.class public Lcom/adobe/reader/ARPortfolioStackEntry;
.super Ljava/lang/Object;


# instance fields
.field public m_filename:Ljava/lang/String;

.field public m_openedPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_openedPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_filename:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/reader/ARPortfolioStackEntry;->m_openedPath:Ljava/lang/String;

    return-void
.end method
