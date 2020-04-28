.class public Lcom/appspot/swisscodemonkeys/pickup/EditProfile;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "profile"


# instance fields
.field private about:Landroid/widget/EditText;

.field private ageSpinner:Landroid/widget/Spinner;

.field private author_image:Landroid/widget/ImageView;

.field private female:Landroid/widget/RadioButton;

.field private male:Landroid/widget/RadioButton;

.field private nickname:Landroid/widget/EditText;

.field private userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

.field private util:Lcom/appspot/swisscodemonkeys/image/ImageUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->nickname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->about:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->loadUser()V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->male:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->female:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->util:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    return-object v0
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->uploadImage(Ljava/lang/String;)V

    return-void
.end method

.method private loadUser()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 243
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    return-void
.end method

.method private setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 8
    .param p1, "profile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 247
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 249
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->about:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->nickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 256
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 264
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->male:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v4

    sget-object v5, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-virtual {v4, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 265
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->female:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v4

    sget-object v5, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-virtual {v4, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 269
    const v3, 0x7f0b0007

    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 270
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "url":Ljava/lang/String;
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://androidpickup.appspot.com/api"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    :cond_3
    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->downloadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 276
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    return-void

    .line 258
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 257
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v0    # "i":I
    :cond_7
    move v4, v6

    .line 264
    goto :goto_1

    :cond_8
    move v4, v6

    .line 265
    goto :goto_2
.end method

.method private uploadImage(Ljava/lang/String;)V
    .locals 9
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 347
    .local v3, "input":Ljava/io/InputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 348
    .local v0, "buffer":[B
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    move-result-object v2

    .line 349
    .local v2, "img":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 351
    .local v5, "output":Lcom/google/protobuf/ByteString$Output;
    :goto_0
    const/4 v6, 0x0

    array-length v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "len":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 354
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 355
    const/4 v0, 0x0

    check-cast v0, [B

    .line 356
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 357
    sget-object v6, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    invoke-virtual {v2, v6}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->setContentType(Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;

    .line 358
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->uploadImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Z

    .line 364
    .end local v0    # "buffer":[B
    .end local v2    # "img":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "output":Lcom/google/protobuf/ByteString$Output;
    :goto_1
    return-void

    .line 352
    .restart local v0    # "buffer":[B
    .restart local v2    # "img":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "output":Lcom/google/protobuf/ByteString$Output;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Lcom/google/protobuf/ByteString$Output;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    .end local v0    # "buffer":[B
    .end local v2    # "img":Lcom/appspot/swisscodemonkeys/client/Ratings$Image$Builder;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "output":Lcom/google/protobuf/ByteString$Output;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 360
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 361
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 362
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 288
    if-nez p2, :cond_0

    .line 342
    :goto_0
    return-void

    .line 291
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->util:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropBitmap(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const-string v3, "Error cropping image, do you have an SD card with enough free space installed?"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 297
    .local v1, "photo":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->util:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    invoke-virtual {v3, v1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->saveBitmapAndCrop(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 309
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->author_image:Landroid/widget/ImageView;

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "uriStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->author_image:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 314
    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;

    invoke-direct {v3, p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 338
    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->requestWindowFeature(I)Z

    .line 74
    const v9, 0x7f03000c

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 77
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->create(Landroid/content/Context;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    move-result-object v9

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->util:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    .line 79
    const v9, 0x7f0b004f

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->male:Landroid/widget/RadioButton;

    .line 80
    const v9, 0x7f0b0050

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->female:Landroid/widget/RadioButton;

    .line 81
    const v9, 0x7f0b000a

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->nickname:Landroid/widget/EditText;

    .line 82
    const v9, 0x7f0b000d

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->about:Landroid/widget/EditText;

    .line 83
    const v9, 0x7f0b0007

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->author_image:Landroid/widget/ImageView;

    .line 85
    const v9, 0x7f0b0037

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 86
    .local v7, "save":Landroid/widget/Button;
    const v9, 0x7f0b003e

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    .local v2, "cancel":Landroid/widget/Button;
    const v9, 0x7f0b0051

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "ages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const/16 v4, 0x10

    .local v4, "i":I
    :goto_0
    const/16 v9, 0x3c

    if-lt v4, v9, :cond_1

    .line 93
    const-string v9, ">= 60"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 95
    const v9, 0x1090008

    .line 94
    invoke-direct {v1, p0, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 96
    .local v1, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->ageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 98
    const v9, 0x7f0b004c

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 99
    .local v6, "pickImage":Landroid/widget/Button;
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$1;

    invoke-direct {v9, p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v9, 0x7f0b004d

    invoke-virtual {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 107
    .local v8, "takePhoto":Landroid/widget/Button;
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$2;

    invoke-direct {v9, p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;

    invoke-direct {v9, p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v9, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;

    invoke-direct {v9, p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const/4 v5, 0x0

    check-cast v5, [B

    .line 182
    .local v5, "p":[B
    if-eqz p1, :cond_0

    .line 183
    const-string v9, "profile"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 185
    :cond_0
    if-eqz v5, :cond_2

    .line 187
    :try_start_0
    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 188
    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-direct {p0, v9}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    return-void

    .line 91
    .end local v1    # "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5    # "p":[B
    .end local v6    # "pickImage":Landroid/widget/Button;
    .end local v8    # "takePhoto":Landroid/widget/Button;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .restart local v1    # "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5    # "p":[B
    .restart local v6    # "pickImage":Landroid/widget/Button;
    .restart local v8    # "takePhoto":Landroid/widget/Button;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 191
    .local v3, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v3}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v3    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_2
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->loadUser()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "profile"

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->userProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 284
    :cond_0
    return-void
.end method

.method protected showWarnDialog(Z)V
    .locals 6
    .param p1, "photo"    # Z

    .prologue
    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;

    invoke-direct {v2, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Z)V

    .line 212
    .local v2, "okClick":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "Upload photo"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 214
    const-string v4, "Please do NOT upload inappropriate or tasteless photos.\n\nFailure to comply with this simple guideline will result in a warning and/or a permanent ban from photo uploading."

    .line 213
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 216
    const-string v4, "I agree"

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070017

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 217
    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 218
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 219
    return-void
.end method
