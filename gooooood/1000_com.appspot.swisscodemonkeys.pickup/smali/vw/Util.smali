.class public Lvw/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvw/Util$HTMLAndURL;
    }
.end annotation


# static fields
.field private static drawable_cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvw/Util;->drawable_cache:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewFromHTML(Landroid/content/Context;Landroid/text/Spanned;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "foregroundColor"    # I
    .param p4, "backgroundColor"    # I
    .param p5, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 133
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 142
    if-eqz p5, :cond_0

    .line 143
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_1
    return-object v0
.end method

.method public static createViewFromImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;II)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "foregroundColor"    # I
    .param p4, "backgroundColor"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 77
    return-object v0
.end method

.method public static createViewFromText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "foregroundColor"    # I
    .param p4, "backgroundColor"    # I
    .param p5, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "textview":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 64
    if-eqz p5, :cond_0

    .line 65
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    return-object v0
.end method

.method public static createViewResultFromHTML(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Lvw/SCMView$ViewResult;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "ninepatch"    # Landroid/graphics/drawable/Drawable;
    .param p3, "foreground"    # I
    .param p4, "background"    # I

    .prologue
    const/4 v4, -0x1

    .line 153
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    :goto_0
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "idx":I
    if-ne v8, v4, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 168
    invoke-static {p1}, Lvw/Util;->extractLink(Ljava/lang/String;)Lvw/Util$HTMLAndURL;

    move-result-object v10

    .line 169
    .local v10, "modified":Lvw/Util$HTMLAndURL;
    const/4 v9, 0x0

    .line 171
    .local v9, "listener":Landroid/view/View$OnClickListener;
    if-eqz v10, :cond_1

    .line 172
    iget-object p1, v10, Lvw/Util$HTMLAndURL;->html:Ljava/lang/String;

    .line 173
    new-instance v9, Lvw/Util$2;

    .end local v9    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v9, v10, p0}, Lvw/Util$2;-><init>(Lvw/Util$HTMLAndURL;Landroid/content/Context;)V

    .line 182
    .restart local v9    # "listener":Landroid/view/View$OnClickListener;
    :cond_1
    move-object v3, v9

    .line 183
    .local v3, "finalListener":Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lvw/Util;->prepareHTML(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 185
    .local v2, "spanned":Landroid/text/Spanned;
    new-instance v0, Lvw/Util$3;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lvw/Util$3;-><init>(Landroid/content/Context;Landroid/text/Spanned;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)V

    .line 207
    .end local v2    # "spanned":Landroid/text/Spanned;
    .end local v3    # "finalListener":Landroid/view/View$OnClickListener;
    .end local v9    # "listener":Landroid/view/View$OnClickListener;
    .end local v10    # "modified":Lvw/Util$HTMLAndURL;
    :goto_1
    return-object v0

    .line 158
    :cond_2
    const-string v0, "-->"

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 159
    .local v7, "end":I
    if-eq v7, v4, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v7, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 207
    .end local v7    # "end":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static extractLink(Ljava/lang/String;)Lvw/Util$HTMLAndURL;
    .locals 10
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 86
    new-instance v5, Lvw/Util$HTMLAndURL;

    invoke-direct {v5}, Lvw/Util$HTMLAndURL;-><init>()V

    .line 88
    .local v5, "result":Lvw/Util$HTMLAndURL;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "lowerHTML":Ljava/lang/String;
    const-string v7, "<a "

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 90
    .local v3, "index":I
    const/4 v0, 0x0

    .line 91
    .local v0, "clickURL":Ljava/lang/String;
    if-ltz v3, :cond_2

    .line 92
    const-string v7, " href=\""

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v7, 0x7

    .line 93
    .local v6, "start":I
    const-string v7, "\""

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, "end":I
    if-eq v6, v8, :cond_0

    if-ne v1, v8, :cond_1

    :cond_0
    move-object v7, v9

    .line 111
    .end local v1    # "end":I
    .end local v6    # "start":I
    :goto_0
    return-object v7

    .line 98
    .restart local v1    # "end":I
    .restart local v6    # "start":I
    :cond_1
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v7, ">"

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 102
    const-string v7, "</a>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "endA":I
    if-ltz v2, :cond_2

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 106
    add-int/lit8 v8, v2, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    iput-object v7, v5, Lvw/Util$HTMLAndURL;->html:Ljava/lang/String;

    .line 107
    iput-object v0, v5, Lvw/Util$HTMLAndURL;->URL:Ljava/lang/String;

    move-object v7, v5

    .line 108
    goto :goto_0

    .end local v1    # "end":I
    .end local v2    # "endA":I
    .end local v6    # "start":I
    :cond_2
    move-object v7, v9

    .line 111
    goto :goto_0
.end method

.method public static getDrawableFromLocation(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    sget-object v4, Lvw/Util;->drawable_cache:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 43
    .local v3, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "url":Ljava/lang/String;
    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v4, p0

    .line 52
    .end local v3    # "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    return-object v4

    .line 46
    .restart local v3    # "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 47
    .local v2, "is":Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lvw/Util;->drawable_cache:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 49
    goto :goto_0

    .line 50
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .end local p0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static prepareHTML(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v1, Lvw/Util$1;

    invoke-direct {v1}, Lvw/Util$1;-><init>()V

    .line 127
    const/4 v2, 0x0

    .line 115
    invoke-static {p0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 128
    .local v0, "spanned":Landroid/text/Spanned;
    return-object v0
.end method
