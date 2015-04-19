.class Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;
.super Ljava/lang/Object;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-boolean v0, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v0, v0, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    iget-object v1, v1, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileCheckPreference;->setForceChecked(Z)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$5;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
