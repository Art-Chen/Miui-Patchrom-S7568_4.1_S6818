.class Lcom/android/settings/FingerAirViewSettings$3;
.super Ljava/lang/Object;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 208
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #getter for: Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #calls: Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/FingerAirViewSettings;->access$500(Lcom/android/settings/FingerAirViewSettings;Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #getter for: Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #getter for: Lcom/android/settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #getter for: Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$3;->this$0:Lcom/android/settings/FingerAirViewSettings;

    #getter for: Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    return-void
.end method
