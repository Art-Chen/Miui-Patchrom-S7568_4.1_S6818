.class public Lcom/android/settings/phoneprofile/PhoneProfileEditor;
.super Landroid/preference/PreferenceActivity;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mState:I

.field profileName:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    .line 138
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    return-void

    .line 124
    :array_0
    .array-data 0x4
        0xebt 0x9t 0x9t 0x7ft
        0x17t 0xct 0x9t 0x7ft
        0x18t 0xct 0x9t 0x7ft
        0x19t 0xct 0x9t 0x7ft
        0x1at 0xct 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/phoneprofile/PhoneProfileEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkDefaultProfileRingtoneProperUri(Landroid/content/Context;I)V
    .locals 23
    .parameter "context"
    .parameter "type"

    .prologue
    .line 612
    invoke-static/range {p2 .. p2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v19

    .line 613
    .local v19, soundPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 615
    .local v16, pathString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 616
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 617
    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "profile_ringtone"

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 618
    .local v18, ringtoneCursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 619
    const-string v3, "profile_ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 631
    .local v17, ringtone:Ljava/lang/String;
    :goto_0
    const-string v3, "PhoneProfileEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  ringtone:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 633
    if-nez v17, :cond_3

    .line 695
    :cond_0
    :goto_1
    return-void

    .line 621
    .end local v17           #ringtone:Ljava/lang/String;
    .end local v18           #ringtoneCursor:Landroid/database/Cursor;
    :cond_1
    const/16 v3, 0x8

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 622
    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "profile_gsm_ringtone"

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 623
    .restart local v18       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 624
    const-string v3, "profile_gsm_ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #ringtone:Ljava/lang/String;
    goto :goto_0

    .line 627
    .end local v17           #ringtone:Ljava/lang/String;
    .end local v18           #ringtoneCursor:Landroid/database/Cursor;
    :cond_2
    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "profile_notification_tone"

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 628
    .restart local v18       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 629
    const-string v3, "profile_notification_tone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #ringtone:Ljava/lang/String;
    goto/16 :goto_0

    .line 635
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v16, :cond_5

    .line 636
    :cond_4
    const-string v3, "PhoneProfileEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : InternalMediaAudio or path=null, path :\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   ringtone: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\ttype\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 639
    :cond_5
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 642
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 643
    .local v4, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 644
    .local v14, cursor1:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 648
    .local v15, cursor2:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 651
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    .line 652
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 653
    const-string v3, "_data"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 656
    .local v20, str:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 657
    const-string v3, "PhoneProfileEditor"

    const-string v5, "checkDefaultProfileRingtoneProperUri : path and URI match to each other "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_6
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 662
    .end local v20           #str:Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v3, "PhoneProfileEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultProfileRingtoneProperUri : patch and URI DONT match  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 664
    .local v6, uriSearch2:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v3

    const-string v8, "_data=?"

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v16, v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 666
    if-eqz v15, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    .line 667
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 668
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 670
    .local v11, _id:J
    const-string v3, "PhoneProfileEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultProfileRingtoneProperUri : we\'ve found same path and another index :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 672
    .local v21, uriForDefaultRingtone:Landroid/net/Uri;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v22, values:Landroid/content/ContentValues;
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 674
    const-string v3, "profile_ringtone"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :goto_2
    sget-object v3, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 683
    .local v13, _uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v13, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    new-instance v22, Landroid/content/ContentValues;

    .end local v22           #values:Landroid/content/ContentValues;
    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 686
    .restart local v22       #values:Landroid/content/ContentValues;
    const-string v3, "is_ringtone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    .end local v11           #_id:J
    .end local v13           #_uri:Landroid/net/Uri;
    .end local v21           #uriForDefaultRingtone:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_3
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_8
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 676
    .restart local v11       #_id:J
    .restart local v21       #uriForDefaultRingtone:Landroid/net/Uri;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_9
    const/16 v3, 0x8

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 677
    :try_start_2
    const-string v3, "profile_gsm_ringtone"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 692
    .end local v6           #uriSearch2:Landroid/net/Uri;
    .end local v11           #_id:J
    .end local v21           #uriForDefaultRingtone:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_a
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3

    .line 680
    .restart local v6       #uriSearch2:Landroid/net/Uri;
    .restart local v11       #_id:J
    .restart local v21       #uriForDefaultRingtone:Landroid/net/Uri;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_c
    :try_start_3
    const-string v3, "profile_notification_tone"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 689
    .end local v11           #_id:J
    .end local v21           #uriForDefaultRingtone:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_d
    const-string v3, "PhoneProfileEditor"

    const-string v5, "checkDefaultProfileRingtoneProperUri : we havn\'t found same path "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 498
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    const-string p1, ""

    .line 501
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    sget-object p1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 509
    .end local p1
    :cond_1
    return-object p1
.end method

.method private static getDefaultSoundConstantPathField(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 698
    const-string v0, "_CONSTANT_PATH"

    .line 699
    .local v0, constantPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 709
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 701
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 703
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 705
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 707
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_silent"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 402
    const-string v1, "profile_silent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 403
    .local v7, vibrationType:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    packed-switch v7, :pswitch_data_0

    .line 414
    const-string v1, "off"

    :goto_0
    return-object v1

    .line 407
    :pswitch_0
    const-string v1, "off"

    goto :goto_0

    .line 409
    :pswitch_1
    const-string v1, "vibrate"

    goto :goto_0

    .line 411
    :pswitch_2
    const-string v1, "mute"

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 483
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 365
    const/4 v8, 0x2

    .line 366
    .local v8, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    const/4 v8, 0x0

    .line 372
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v1, v2, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 376
    :cond_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_ring_volume"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 379
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 380
    const-string v1, "profile_ring_volume"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 381
    .local v9, ringtoneVolume:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    if-nez v9, :cond_2

    .line 383
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "profile_ring_volume"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 386
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #ringtoneVolume:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 391
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 393
    .restart local v6       #_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    return-void

    .line 368
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090526

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c34

    new-instance v2, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 533
    return-void
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 596
    if-ne p1, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 603
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 431
    if-nez p2, :cond_0

    .line 479
    :goto_0
    return-void

    .line 437
    :cond_0
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v1, v3, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkDefaultProfileRingtoneProperUri(Landroid/content/Context;I)V

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v6, :cond_3

    .line 443
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "profile_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 444
    .local v9, ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 445
    const-string v1, "profile_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, ringtone:Ljava/lang/String;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    if-eqz v8, :cond_5

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 459
    .local v2, ringtoneUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1040579

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, summary:Ljava/lang/CharSequence;
    if-nez v2, :cond_6

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1040577

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 478
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 447
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    .end local v8           #ringtone:Ljava/lang/String;
    .end local v9           #ringtoneCursor:Landroid/database/Cursor;
    .end local v10           #summary:Ljava/lang/CharSequence;
    :cond_3
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 448
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "profile_gsm_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 449
    .restart local v9       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const-string v1, "profile_gsm_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ringtone:Ljava/lang/String;
    goto :goto_1

    .line 453
    .end local v8           #ringtone:Ljava/lang/String;
    .end local v9           #ringtoneCursor:Landroid/database/Cursor;
    :cond_4
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "profile_notification_tone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 454
    .restart local v9       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    const-string v1, "profile_notification_tone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ringtone:Ljava/lang/String;
    goto/16 :goto_1

    :cond_5
    move-object v2, v4

    .line 458
    goto/16 :goto_2

    .line 466
    .restart local v2       #ringtoneUri:Landroid/net/Uri;
    .restart local v10       #summary:Ljava/lang/CharSequence;
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 468
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 469
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 470
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 472
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 474
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method private updateState(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    if-ne v0, v1, :cond_0

    .line 424
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 341
    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 345
    .local v1, errorMsg:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090fd9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    :cond_0
    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 350
    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x0

    .line 361
    :goto_0
    return v4

    .line 354
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "profile_name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v5, "profile_mode"

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 358
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, v4}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 6
    .parameter "pickedUri"
    .parameter "ringtoneType"

    .prologue
    const/4 v3, 0x0

    .line 571
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    :cond_0
    const-string v2, "PhoneProfileEditor"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneData(I)V

    .line 593
    return-void

    .line 575
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .restart local v1       #values:Landroid/content/ContentValues;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    .line 581
    const-string v4, "profile_gsm_ringtone"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_2
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 586
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 588
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v2, v3, :cond_1

    .line 589
    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .end local v0           #_uri:Landroid/net/Uri;
    :cond_3
    move-object v2, v3

    .line 581
    goto :goto_1

    .line 583
    :cond_4
    const-string v4, "profile_ringtone"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 537
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 539
    packed-switch p1, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 542
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    .local v0, pickedUri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 548
    .end local v0           #pickedUri:Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 549
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 550
    .restart local v0       #pickedUri:Landroid/net/Uri;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 178
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->addPreferencesFromResource(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 183
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iput v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fd6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 191
    const-string v1, "profile_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    .line 192
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    const-string v1, "silent_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    .line 206
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, mTitle:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 223
    :goto_2
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    .line 224
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    .line 225
    const-string v1, "ringtone2"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    new-instance v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 253
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    .line 254
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->setObject(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    .line 259
    return-void

    .line 187
    .end local v8           #mTitle:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    goto/16 :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    .restart local v8       #mTitle:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 283
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 291
    :goto_0
    return v3

    .line 286
    :cond_0
    const v0, 0x7f090fd8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    const/4 v0, 0x2

    const v1, 0x7f090fd7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 326
    const-string v1, "PhoneProfileEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown keyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    packed-switch p1, :pswitch_data_0

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 329
    :pswitch_0
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 330
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v2, 0x1

    .line 557
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 558
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 562
    if-ne p1, v2, :cond_0

    .line 563
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 321
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 299
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 306
    :pswitch_1
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 307
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 308
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    .end local v0           #_uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    if-ne v2, v3, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2, v3, v5}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setPhoneProfileMode(Landroid/content/Context;Landroid/media/AudioManager;I)V

    .line 314
    iput v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 486
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 487
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 494
    :cond_0
    :goto_0
    return v2

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 265
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->lookupRingtoneNames()V

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    return-void
.end method
