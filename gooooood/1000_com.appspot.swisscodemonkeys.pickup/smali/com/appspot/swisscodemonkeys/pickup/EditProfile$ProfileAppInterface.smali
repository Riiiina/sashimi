.class public interface abstract Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;
.super Ljava/lang/Object;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileAppInterface"
.end annotation


# virtual methods
.method public abstract getExtraAuthorView(Landroid/content/Context;I)Landroid/view/View;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getPictureChanged()Z
.end method

.method public abstract setNickname(Ljava/lang/String;)V
.end method

.method public abstract setPictureChanged(Z)V
.end method
