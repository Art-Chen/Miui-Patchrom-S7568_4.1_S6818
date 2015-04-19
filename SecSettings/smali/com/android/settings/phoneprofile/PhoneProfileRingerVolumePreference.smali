.class public Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mCurrentMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginalMusicVol:I

.field private mOriginalNotiVol:I

.field private mOriginalRingVol:I

.field private mOriginalSysVol:I

.field private mProfileMode:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x1t 0x2t 0xbt 0x7ft
        0x5t 0x2t 0xbt 0x7ft
        0x9t 0x2t 0xbt 0x7ft
        0xbt 0x2t 0xbt 0x7ft
    .end array-data

    .line 75
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 0x4
        0x0t 0x2t 0xbt 0x7ft
        0x4t 0x2t 0xbt 0x7ft
        0x8t 0x2t 0xbt 0x7ft
        0xat 0x2t 0xbt 0x7ft
    .end array-data

    .line 91
    :array_3
    .array-data 0x4
        0xeat 0x2t 0x8t 0x1t
        0xe3t 0x2t 0x8t 0x1t
        0xdft 0x2t 0x8t 0x1t
        0xe6t 0x2t 0x8t 0x1t
    .end array-data

    .line 99
    :array_4
    .array-data 0x4
        0xe8t 0x2t 0x8t 0x1t
        0xe2t 0x2t 0x8t 0x1t
        0xdet 0x2t 0x8t 0x1t
        0xe5t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 108
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 110
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 438
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setStreamType(I)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setDisplayType(I)V

    .line 162
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setDialogLayoutResource(I)V

    .line 164
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 166
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_edit_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 387
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 388
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 380
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iput-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 124
    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 125
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 127
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 128
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 130
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802e4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 139
    .local v3, volume:I
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_4

    .line 141
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 123
    .end local v3           #volume:I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 143
    .restart local v3       #volume:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 147
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    .end local v3           #volume:I
    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 118
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setPositiveButtonText(I)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 351
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 353
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 354
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    .line 184
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 186
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v11, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    .line 193
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    .line 197
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    .line 199
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 200
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 201
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 202
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v13, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v13, v9

    .line 199
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 211
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 215
    .local v12, silentableStreams:I
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 216
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 217
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 221
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 225
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    const v10, 0x7f0b0202

    .line 246
    .local v10, id:I
    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 247
    .local v8, hideSection:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_4
    return-void

    .line 244
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_5
    const v10, 0x7f0b0206

    .restart local v10       #id:I
    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 13
    .parameter "positiveResult"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 266
    const-string v8, "PhoneProfileVolumePreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " onDialogClosed() positiveResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v1, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v7, v1, v3

    .line 275
    .local v7, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v7, :cond_0

    .line 276
    invoke-virtual {v7}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 274
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    .end local v1           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :catch_0
    move-exception v2

    .line 272
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "PhoneProfileVolumePreference"

    const-string v9, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_1
    if-nez p1, :cond_3

    .line 282
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 283
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 284
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x5

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 285
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v9, "audioParam;curDevice"

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, isMusicHPH:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x3

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 346
    .end local v4           #isMusicHPH:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->cleanup()V

    .line 347
    return-void

    .line 300
    :cond_3
    const-string v8, "PhoneProfileVolumePreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "volume:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v11, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v11, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 2:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v11, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "profile_music_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    iget v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    iget v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    if-ne v8, v9, :cond_5

    .line 310
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 311
    const-string v8, "profile_ring_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v8, "profile_notification_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v8, "profile_system_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    :goto_3
    sget-object v8, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    add-int/lit8 v9, v9, 0x1

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 327
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    iget v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    iget v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    if-eq v8, v9, :cond_2

    .line 330
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 331
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 332
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x5

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 333
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v9, "audioParam;curDevice"

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .restart local v4       #isMusicHPH:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x3

    iget v10, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_2

    .line 316
    .end local v0           #_uri:Landroid/net/Uri;
    .end local v4           #isMusicHPH:Ljava/lang/String;
    :cond_4
    const-string v8, "profile_ring_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v8, "profile_notification_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v8, "profile_system_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 322
    :cond_5
    const-string v8, "profile_ring_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v8, "profile_notification_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v8, "profile_system_volume"

    iget-object v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 361
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 367
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 360
    goto :goto_0

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 177
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 179
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 433
    :cond_1
    return-void

    .line 424
    :cond_2
    check-cast p1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    .line 425
    invoke-virtual {p1}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 426
    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 427
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 429
    if-eqz v2, :cond_3

    .line 430
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 427
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 375
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 374
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 399
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 400
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 405
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 406
    .local v1, myState:Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 407
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 408
    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 409
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 410
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 413
    goto :goto_0
.end method
