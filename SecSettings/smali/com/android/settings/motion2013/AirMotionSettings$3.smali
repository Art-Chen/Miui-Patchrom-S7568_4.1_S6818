.class Lcom/android/settings/motion2013/AirMotionSettings$3;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

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

    .line 240
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$300(Lcom/android/settings/motion2013/AirMotionSettings;Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$500(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$600(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$700(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$800(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$3;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$900(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 249
    return-void
.end method
