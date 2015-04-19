.class public Lcom/android/internal/policy/impl/FaceVoiceUnlock;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Lcom/android/internal/policy/impl/BiometricSensorUnlock;
.implements Landroid/os/Handler$Callback;
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULLockscreen"


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_EXPOSE_FALLBACK:I

.field private final MSG_HIDE_FACE_UNLOCK_VIEW:I

.field private final MSG_HIDE_VOICE_LAYOUT:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_SHOW_FACE_UNLOCK_VIEW:I

.field private final MSG_SHOW_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final MSG_UNLOCK:I

.field private final MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

.field private final SERVICE_STARTUP_VIEW_TIMEOUT:I

.field private mBoundToService:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field protected mFaceUnlocked:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mTalkbackEnabled:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

.field private mVoiceVerifyStarted:Z

.field protected mWakeUnlocked:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field private mWakeUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;)V
    .locals 9
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "keyguardScreenCallback"
    .parameter "configuration"
    .parameter "voiceUnlockViewCallback"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    iput v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_FACE_UNLOCK_VIEW:I

    iput v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_HIDE_FACE_UNLOCK_VIEW:I

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SERVICE_CONNECTED:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SERVICE_DISCONNECTED:I

    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_UNLOCK:I

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_CANCEL:I

    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    const/4 v5, 0x7

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_EXPOSE_FALLBACK:I

    const/16 v5, 0x8

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_POKE_WAKELOCK:I

    iput v6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT:I

    iput v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

    iput v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

    const/16 v5, 0xd

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

    const/16 v5, 0xe

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_HIDE_VOICE_LAYOUT:I

    const/16 v5, 0xf

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    const/16 v5, 0xbb8

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->SERVICE_STARTUP_VIEW_TIMEOUT:I

    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    iput v6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_INIT_WAKEUP_CMD:I

    iput v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_START_VERIFY_CMD:I

    iput v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_TERMINATE_VERIFY_CMD:I

    const/16 v5, 0xd

    iput v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->MSG_DESTROY_WAKEUP_CMD:I

    new-instance v5, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$2;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v5, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$3;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p6, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, accesibilityService:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-eqz v5, :cond_2

    const-string v5, "FULLockscreen"

    const-string v6, "tb on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, drivingMode:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, unlockDrivingMode:I
    if-ne v1, v3, :cond_3

    if-ne v2, v3, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    const-string v5, "FULLockscreen"

    const-string v6, "drv mode on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_1
    :goto_1
    const-string v5, "FULLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTalkbackEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    const-string v3, "FULLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceUnlockOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->initWakeUpHandler()V

    new-instance v3, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Landroid/content/Context;Landroid/content/res/Configuration;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    return-void

    :cond_2
    const-string v5, "FULLockscreen"

    const-string v6, "tb off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v1       #drivingMode:I
    .restart local v2       #unlockDrivingMode:I
    :cond_3
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkIfVoiceUnlockErrorShowed()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->isErrorShowed()Z

    move-result v0

    goto :goto_0
.end method

.method private displayPrepareMsg()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private displayRecognitionMsg(J)V
    .locals 2
    .parameter "millis"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private displayVerifyFailMsg()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .locals 7
    .parameter "timeoutMillis"

    .prologue
    const-wide/16 v5, 0xbb8

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    add-long v3, p1, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/16 v3, 0x1388

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    add-long v2, p1, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private displayVerifySuccessMsg()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeWakeupCmdDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private initWakeUpHandler()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;-><init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private removeDisplayMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private removeWakeupCmdDisplayMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    iget-object v8, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    :goto_0
    monitor-exit v8

    :goto_1
    return-void

    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_1

    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    :cond_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateVolume(I)V
    .locals 5
    .parameter "rmsValue"

    .prologue
    const/4 v0, 0x0

    .local v0, img:I
    const/16 v2, 0x1c

    if-ge p1, v2, :cond_0

    const v0, 0x1080467

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_1

    const v0, 0x1080468

    goto :goto_0

    :cond_1
    const/16 v2, 0x22

    if-ge p1, v2, :cond_2

    const v0, 0x1080473

    goto :goto_0

    :cond_2
    const/16 v2, 0x25

    if-ge p1, v2, :cond_3

    const v0, 0x1080475

    goto :goto_0

    :cond_3
    const/16 v2, 0x28

    if-ge p1, v2, :cond_4

    const v0, 0x1080476

    goto :goto_0

    :cond_4
    const/16 v2, 0x2b

    if-ge p1, v2, :cond_5

    const v0, 0x1080477

    goto :goto_0

    :cond_5
    const/16 v2, 0x2e

    if-ge p1, v2, :cond_6

    const v0, 0x1080478

    goto :goto_0

    :cond_6
    const/16 v2, 0x31

    if-ge p1, v2, :cond_7

    const v0, 0x1080479

    goto :goto_0

    :cond_7
    const/16 v2, 0x34

    if-ge p1, v2, :cond_8

    const v0, 0x108047a

    goto :goto_0

    :cond_8
    const/16 v2, 0x37

    if-ge p1, v2, :cond_9

    const v0, 0x108047b

    goto :goto_0

    :cond_9
    const/16 v2, 0x3a

    if-ge p1, v2, :cond_a

    const v0, 0x1080469

    goto :goto_0

    :cond_a
    const/16 v2, 0x3d

    if-ge p1, v2, :cond_b

    const v0, 0x108046a

    goto :goto_0

    :cond_b
    const/16 v2, 0x40

    if-ge p1, v2, :cond_c

    const v0, 0x108046b

    goto :goto_0

    :cond_c
    const/16 v2, 0x43

    if-ge p1, v2, :cond_d

    const v0, 0x108046c

    goto :goto_0

    :cond_d
    const/16 v2, 0x46

    if-ge p1, v2, :cond_e

    const v0, 0x108046d

    goto :goto_0

    :cond_e
    const/16 v2, 0x49

    if-ge p1, v2, :cond_f

    const v0, 0x108046e

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x4c

    if-ge p1, v2, :cond_10

    const v0, 0x108046f

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x4f

    if-ge p1, v2, :cond_11

    const v0, 0x1080470

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x52

    if-ge p1, v2, :cond_12

    const v0, 0x1080471

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x55

    if-ge p1, v2, :cond_13

    const v0, 0x1080472

    goto/16 :goto_0

    :cond_13
    const v0, 0x1080474

    goto/16 :goto_0
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .parameter "value"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->updateVolume(I)V

    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 4
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    const/4 v3, 0x1

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    :cond_0
    if-ne p1, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifySuccessMsg()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, -0xa

    if-eq p1, v0, :cond_4

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    :cond_4
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eq p1, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifyFailMsgDelayed(J)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->hideVoiceLayout()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    const v0, 0x8000

    return v0
.end method

.method handleCancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void

    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleExposeFallback()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleExposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleHideFaceUnlockView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleHideFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x1388

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleShowFaceUnlockView()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleHideFaceUnlockView()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleServiceConnected()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleUnlock()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleCancel()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handleExposeFallback()V

    goto :goto_1

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->removeVoiceUnlockView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setPrepareMsg()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->addVoiceUnlockView(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayRecognitionMsg(J)V

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;->removeVoiceUnlockView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setRecognitionMsg()V

    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayVerifyFailMsgDelayed(J)V

    goto :goto_1

    :pswitch_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setErrorMsg()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->setSuccessMsg()V

    goto :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceUnlockView:Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock$VoiceUnlockView;->updateVolumeBg(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    const/4 v0, 0x2

    new-array v7, v0, [I

    .local v7, position:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    .end local v1           #windowToken:Landroid/os/IBinder;
    .end local v7           #position:[I
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    goto :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #windowToken:Landroid/os/IBinder;
    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mServiceRunning:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleShowFaceUnlockView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleShowFaceUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopFaceLock()Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->displayPrepareMsg()V

    :goto_2
    return-void

    :cond_0
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "FULLockscreen"

    const-string v1, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stop()Z

    goto :goto_3
.end method

.method public hide()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .parameter "biometricUnlockView"

    .prologue
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public show(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "show() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->removeDisplayMessages()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlocked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUnlocked:Z

    :cond_2
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->show(J)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_3

    const-string v0, "FULLockscreen"

    const-string v1, "Binding to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return v4

    :cond_3
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stop() called off of the UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->hideVoiceLayout()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopFaceLock()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stop() called off of the UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    .local v0, mWasRunning:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->stopUi()V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mBoundToService:Z

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mIsRunning:Z

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
