.class La/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/xmlpull/v1/XmlSerializer;

.field protected b:La/a/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, La/a/a/c;

    invoke-direct {v0}, La/a/a/c;-><init>()V

    iput-object v0, p0, La/a/a/e;->b:La/a/a/b;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "params"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "param"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, La/a/a/e;->b:La/a/a/b;

    iget-object v2, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, La/a/a/b;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "value"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v2, "param"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "params"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method
