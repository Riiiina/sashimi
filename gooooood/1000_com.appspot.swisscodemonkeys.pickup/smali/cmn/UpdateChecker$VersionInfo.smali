.class public Lcmn/UpdateChecker$VersionInfo;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field currentVersion:I

.field name:Ljava/lang/String;

.field public negativeButton:Ljava/lang/String;

.field noUpdateLink:Ljava/lang/String;

.field noUpdateText:Ljava/lang/String;

.field notificationId:I

.field notificationTitle:Ljava/lang/String;

.field otherAppText:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field public positiveButton:Ljava/lang/String;

.field prefCurrentVersion:I

.field text:Ljava/lang/String;

.field public updateId:I

.field updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "arg0"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->name:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->otherAppText:Ljava/lang/String;

    .line 153
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->updateUrl:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->otherAppText:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcmn/UpdateChecker$VersionInfo;->updateUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 161
    return-void
.end method
