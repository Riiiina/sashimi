.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;
.super Ljava/lang/Object;
.source "EditProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;)Lcom/appspot/swisscodemonkeys/pickup/EditProfile;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->showDialog(I)V

    .line 120
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$0(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "nicknameValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$1(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "aboutValue":Ljava/lang/String;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAbout(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setNickname(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v1

    .line 125
    .local v1, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$2(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    sget-object v5, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-virtual {v1, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 131
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$4(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "spinItem":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 133
    const-string v5, ">="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAge(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 140
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v3

    .line 141
    .local v3, "profile":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$5(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setResult(I)V

    .line 143
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->finish()V

    .line 170
    :goto_2
    return-void

    .line 127
    .end local v3    # "profile":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .end local v4    # "spinItem":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$3(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    sget-object v5, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-virtual {v1, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_0

    .line 136
    .restart local v4    # "spinItem":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->setAge(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    goto :goto_1

    .line 146
    .restart local v3    # "profile":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    :cond_4
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v5, v3}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$6(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 148
    new-instance v5, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    .line 169
    invoke-virtual {v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method
