.class Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$800(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$800(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$800(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V

    .line 250
    :cond_2
    return-void
.end method
