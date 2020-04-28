.class public Lcom/appspot/swisscodemonkeys/pickup/PickupPreferences;
.super Lcmn/SCMPreferenceActivity;
.source "PickupPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcmn/SCMPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPrefs()V
    .locals 1

    .prologue
    .line 8
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/PickupPreferences;->addPreferencesFromResource(I)V

    .line 9
    return-void
.end method
