.class Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;
.super Ljava/lang/Object;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V
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
    .line 519
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 521
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 522
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 523
    .local v0, _uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I
    invoke-static {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$200(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #getter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$000(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setPhoneProfileMode(Landroid/content/Context;Landroid/media/AudioManager;I)V

    .line 527
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    #setter for: Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I
    invoke-static {v1, v4}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->access$102(Lcom/android/settings/phoneprofile/PhoneProfileEditor;I)I

    .line 530
    .end local v0           #_uri:Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    .line 531
    return-void
.end method
