.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;,
        Lcom/android/server/PowerManagerService$DVFSLockIntentSender;,
        Lcom/android/server/PowerManagerService$DVFSLockList;,
        Lcom/android/server/PowerManagerService$DVFSLock;,
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;,
        Lcom/android/server/PowerManagerService$SmartSleepTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;,
        Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_POWER_OFF:Ljava/lang/String; = "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field private static final ACTION_PROXIMITY_CP:Ljava/lang/String; = "android.intent.action.PROXIMITY_CP"

.field private static final ALL_BRIGHT:I = 0xf

.field private static final ALL_LIGHTS_OFF:I = 0x0

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0xa

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x14

.field static final AUTODIMNESS_ANIM_STEPS:I = 0x147ae1

.field private static final AUTO_POWER_OFF_REQUEST:I = 0x0

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field private static final CABL_TAG:Ljava/lang/String; = "PMSCabl"

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_BRIGHTNESS:I = 0xc0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final EXTRA_PROXIMITY_CP:Ljava/lang/String; = "cmd"

.field private static final FULL_WAKE_LOCK_ID:I = 0x2

.field static final IMMEDIATE_ANIM_STEPS:I = 0x4

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

#the value of this static final field might be set in the static constructor
.field private static final IS_TYPE_LT02:Z = false

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0xbb8

.field private static final LIGHT_SENSOR_OFFSET_SCALE:I = 0x8

.field private static final LIGHT_SENSOR_RANGE_EXPANSION:I = 0x14

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = true

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field public static final MONITOR_WAKELOCK_FLAG_SAVED:Ljava/lang/String; = "com.android.server.Monitor.Wakelocks"

.field private static final MSG_ACQUIRE_DVFS_LOCK_INTENT_MAX:I = 0x2

.field private static final MSG_ACQUIRE_DVFS_LOCK_INTENT_MIN:I = 0x1

.field private static final MSG_RELEASE_DVFS_LOCK_INTENT_MAX:I = 0x4

.field private static final MSG_RELEASE_DVFS_LOCK_INTENT_MIN:I = 0x3

.field private static final NOMINAL_FRAME_TIME_MS:I = 0x10

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final PARTIAL_WAKE_LOCK_ID:I = 0x1

.field static POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x0

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SAMSUNG_PHONECALL_DIM_DELAY:I = 0xfa0

.field private static final SAMSUNG_PHONECALL_KEYLIGHT_DELAY:I = 0x1770

.field private static final SAMSUNG_PHONECALL_SCREENOFF_DELAY:I = 0x4e20

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_KEYBOARD_BRIGHT:I = 0xb

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TAG_AUTO_POWER_OFF:Ljava/lang/String; = "APO : "

.field private static daemonSock:Landroid/net/LocalSocket; = null

.field private static in:Ljava/io/InputStream; = null

.field private static isCabcDaemonConnected:Z = false

.field private static isCabcDaemonOff:Z = false

.field private static final mAutoBrightnessWithTiltEnabled:Z = true

.field private static final mDebugDVFSLock:Z = false

.field private static final mDebugLightAnimation:Z = false

.field private static final mDebugLightSensor:Z = true

.field private static final mDebugProximitySensor:Z = true

.field private static mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static final mIsNorthAmericaSalesCode:Z

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mSpew:Z

.field private static mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

.field private static mStrAutoBrightnessLevels:Ljava/lang/String;

.field private static mStrBrightnessValuePoints:Ljava/lang/String;

.field private static mStrHighHysteresisPoints:Ljava/lang/String;

.field private static mStrLcdBacklightValues:Ljava/lang/String;

.field private static mStrLowHysteresisPoints:Ljava/lang/String;

.field private static mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

.field private static mWakelockMonitorFlag:I

.field private static out:Ljava/io/OutputStream;


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field private mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

.field private mActivityService:Landroid/app/IActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessHysteresisLevels:[I

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private final mAutoPowerOffDelay:I

.field private mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

.field private mAutoPowerOffTimeMillis:J

.field private mAutoPowerOffTimeoutSetting:I

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBoolProximityCP:Z

.field private mBootCompleted:Z

.field private mBrightnessLevels:[I

.field private mBrightnessValueSlope:[D

.field private mBrightnessValues:[I

.field private mBrightnessValuesOrg:[I

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mButtonOffTimeoutSetting:I

.field private mCablTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDVFSLockIntentSenderHandler:Landroid/os/Handler;

.field private mDVFSLockIntentSenderThread:Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

.field private final mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

.field private mDeviceLockTimeoutSetting:I

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mDynamicAutoBrightnessEnabled:Z

.field private mDynamicAutoBrightnessRatio:F

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mDynamicAutoBrightnessValue:I

.field private mFaceDetected:Z

.field private mForceDisableWakeLock:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadless:Z

.field private mHighHysteresisLevels:[I

.field private mHighHysteresisLux:I

.field private mHighHysteresisSlope:[D

.field private mHighHysteresisValues:[I

.field private mHighHysteresisValuesOrg:[I

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialAnimation:Z

.field private mInitialized:Z

.field private mIsDeviceLockTime:Z

.field private mIsDocked:Z

.field mIsFakeOff:Z

.field private mIsLockZone:Z

.field private mIsPowered:Z

.field private mIsSecuredLock:I

.field public mIsSipVisible:Z

.field private mIsTablet:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastAutoBrightnessLevel:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorAdjustSetting:F

.field private mLightSensorButtonBrightness:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorScreenBrightnessLowerLimit:I

.field private mLightSensorScreenBrightnessUpperLimit:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mLowHysteresisLevels:[I

.field private mLowHysteresisLux:I

.field private mLowHysteresisSlope:[D

.field private mLowHysteresisValues:[I

.field private mLowHysteresisValuesOrg:[I

.field private mLowLimitAtHighestAutoBrightnessLevel:I

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapPreventAutoPowerOff:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxBrightness:I

.field private mMaximumScreenOffTimeout:I

.field private mMinimumExpressiveBrightnessValues:[I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mPackagesNeedIS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPartialCount:I

.field private volatile mPersistentDVFSLocksInfo:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerIsChanged:Z

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessHandler:Landroid/os/Handler;

.field private mScreenBrightnessOverride:I

.field private mScreenBrightnessSetting:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mSignedSettingsRatio:F

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSkippedScreenOn:Z

.field private mSmartSleepDelay:I

.field private mSmartSleepEnabled:Z

.field private mSmartSleepHandler:Landroid/os/Handler;

.field private mSmartSleepIntent:Landroid/content/Intent;

.field private mSmartSleepNotificationDelay:I

.field private mSmartSleepNotificationOffset:I

.field private final mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

.field private final mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

.field private mSmartSleepThread:Landroid/os/HandlerThread;

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mSupportedFrequency:[I

.field private mSystemPowerSaveModeEnabled:Z

.field private mTiltAngle:F

.field mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field mUnplugTurnsOnScreen:Z

.field private mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserActivityReason:Ljava/lang/String;

.field private mUserControlLevel:I

.field private mUserState:I

.field private mValueOfVirtualZeroCandela:I

.field private mWaitingForFirstLightSensor:Z

.field private mWakeLockState:I

.field private mWakelockMonitorReceiver:Landroid/content/BroadcastReceiver;

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J

.field private mWindowScaleAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 268
    sput v1, Lcom/android/server/PowerManagerService;->mWakelockMonitorFlag:I

    .line 411
    const/16 v0, 0x14

    sput v0, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    .line 421
    sput-object v3, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    .line 459
    const-string v0, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    .line 460
    const-string v0, "VZW"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMB"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MTR"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    sget-object v2, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    .line 482
    const-string v0, "mLowHysteresisPoints = "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrLowHysteresisPoints:Ljava/lang/String;

    .line 483
    const-string v0, "mBrightnessValuePoints = "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrBrightnessValuePoints:Ljava/lang/String;

    .line 484
    const-string v0, "mHighHysteresisPoints = "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrHighHysteresisPoints:Ljava/lang/String;

    .line 485
    const-string v0, "mMinimumExpressiveBrightnessValues = "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

    .line 486
    const-string v0, "mAutoBrightnessLevels =         "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessLevels:Ljava/lang/String;

    .line 487
    const-string v0, "mAutoBrightnessHysteresisLevels = "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

    .line 488
    const-string v0, "mLcdBacklightValues =               "

    sput-object v0, Lcom/android/server/PowerManagerService;->mStrLcdBacklightValues:Ljava/lang/String;

    .line 489
    const-string v0, "lt02"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    .line 6075
    sput-object v3, Lcom/android/server/PowerManagerService;->in:Ljava/io/InputStream;

    .line 6076
    sput-object v3, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    .line 6079
    sput-object v3, Lcom/android/server/PowerManagerService;->daemonSock:Landroid/net/LocalSocket;

    .line 6080
    sput-boolean v1, Lcom/android/server/PowerManagerService;->isCabcDaemonConnected:Z

    .line 6081
    sput-boolean v1, Lcom/android/server/PowerManagerService;->isCabcDaemonOff:Z

    return-void

    :cond_1
    move v0, v1

    .line 460
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/high16 v8, -0x4080

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 833
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 201
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 245
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 274
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 275
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 276
    iput v4, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 277
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 278
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 279
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 280
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 281
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 282
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 288
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 289
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 290
    iput v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 291
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 292
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 293
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 297
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 302
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 305
    new-instance v2, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 306
    new-instance v2, Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    .line 307
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 308
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 309
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 310
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 321
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    .line 339
    new-instance v2, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 341
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 343
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 351
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 352
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 353
    iput v5, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 354
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 355
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 356
    iput v8, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 357
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 358
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 363
    iput v8, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    .line 364
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 366
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 367
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 368
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 369
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 370
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 371
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 373
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 374
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 375
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 376
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 380
    const/16 v2, 0xc0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 381
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 382
    iput v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 390
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 391
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 396
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 408
    iput v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 410
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    .line 425
    new-instance v2, Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$SmartSleepTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    .line 426
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    .line 427
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    .line 428
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    .line 431
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 432
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    .line 433
    iput v4, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    .line 434
    iput v5, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    .line 437
    new-instance v2, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    .line 438
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationDelay:I

    .line 439
    const/16 v2, 0xfa0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationOffset:I

    .line 441
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    .line 451
    iput v5, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    .line 452
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    .line 453
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    .line 454
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffDelay:I

    .line 457
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 480
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    .line 578
    new-instance v2, Lcom/android/server/PowerManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mWakelockMonitorReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v2, Lcom/android/server/PowerManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

    .line 2320
    new-instance v2, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 2335
    new-instance v2, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 2416
    new-instance v2, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2427
    new-instance v2, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2440
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    .line 2441
    new-instance v2, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2639
    new-instance v2, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 2645
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    .line 3559
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    .line 3612
    new-instance v2, Lcom/android/server/PowerManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    .line 3810
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3811
    iput v5, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3812
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 3813
    iput v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3814
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    .line 3815
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    .line 3816
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3817
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    .line 3917
    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    .line 4263
    new-instance v2, Lcom/android/server/PowerManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 4277
    new-instance v2, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 4291
    new-instance v2, Lcom/android/server/PowerManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mCablTask:Ljava/lang/Runnable;

    .line 4300
    iput-boolean v7, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    .line 5158
    new-instance v2, Lcom/android/server/PowerManagerService$19;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$19;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 5251
    new-instance v2, Lcom/android/server/PowerManagerService$20;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$20;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 5280
    new-instance v2, Lcom/android/server/PowerManagerService$21;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$21;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 6043
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 836
    .local v0, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 837
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 838
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    iput v7, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 858
    const-string v2, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    .line 862
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 864
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 871
    return-void

    .line 277
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static CabcDaemonConnect()V
    .locals 4

    .prologue
    .line 6137
    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6140
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    sput-object v2, Lcom/android/server/PowerManagerService;->daemonSock:Landroid/net/LocalSocket;

    .line 6141
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 6143
    .local v0, address:Landroid/net/LocalSocketAddress;
    sget-object v2, Lcom/android/server/PowerManagerService;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 6144
    sget-object v2, Lcom/android/server/PowerManagerService;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->in:Ljava/io/InputStream;

    .line 6145
    sget-object v2, Lcom/android/server/PowerManagerService;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    .line 6146
    sget-object v2, Lcom/android/server/PowerManagerService;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 6147
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/PowerManagerService;->isCabcDaemonConnected:Z

    .line 6154
    :goto_0
    return-void

    .line 6150
    :cond_0
    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6151
    :catch_0
    move-exception v1

    .line 6152
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v7, 0x0

    .line 6158
    sget-object v5, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/PowerManagerService;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 6160
    :try_start_0
    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6163
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 6164
    .local v4, send_buf:[B
    sget-object v5, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 6165
    sget-object v5, Lcom/android/server/PowerManagerService;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 6168
    const/16 v5, 0x64

    new-array v2, v5, [B

    .line 6169
    .local v2, recv_buf:[B
    sget-object v5, Lcom/android/server/PowerManagerService;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6170
    .local v1, len:I
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 6172
    .local v3, response:Ljava/lang/String;
    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6181
    .end local v1           #len:I
    .end local v2           #recv_buf:[B
    .end local v3           #response:Ljava/lang/String;
    .end local v4           #send_buf:[B
    :goto_0
    return-void

    .line 6173
    :catch_0
    move-exception v0

    .line 6174
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6178
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v5, "PMSCabl"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    sput-boolean v7, Lcom/android/server/PowerManagerService;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 5967
    packed-switch p0, :pswitch_data_0

    .line 5974
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 5970
    :pswitch_0
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_0

    .line 5972
    :pswitch_1
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_0

    .line 5967
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static IsCabcDaemonConnected()Z
    .locals 3

    .prologue
    .line 6132
    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/PowerManagerService;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6133
    sget-boolean v0, Lcom/android/server/PowerManagerService;->isCabcDaemonConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$10002(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$10100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$10502(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$10600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$11002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->shutdown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/PowerManagerService;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;JJZIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return p1
.end method

.method static synthetic access$4002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$4076(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->checkIntelligentSleep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$7902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return p1
.end method

.method static synthetic access$8100(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$8502(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$8600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/server/PowerManagerService;->mWakelockMonitorFlag:I

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    sput p0, Lcom/android/server/PowerManagerService;->mWakelockMonitorFlag:I

    return p0
.end method

.method static synthetic access$9100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$9202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$9500(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->checkPreventAutoPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method private acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"

    .prologue
    .line 5713
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, p3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v8

    .line 5718
    .local v8, index:I
    if-gez v8, :cond_2

    .line 5719
    new-instance v0, Lcom/android/server/PowerManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService$DVFSLock;-><init>(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 5720
    .local v0, newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V

    .line 5726
    :goto_0
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 5727
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_1

    .line 5728
    :cond_0
    sget-boolean v1, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v1, :cond_3

    .line 5729
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService;->acquireDVFSLockIntent_MAX(I)V

    .line 5733
    :goto_1
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5746
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    .line 5747
    return-void

    .line 5723
    .end local v0           #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService$DVFSLock;

    .restart local v0       #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_0

    .line 5731
    :cond_3
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    goto :goto_1

    .line 5736
    :cond_4
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5737
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_1

    .line 5738
    :cond_5
    sget-boolean v1, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v1, :cond_6

    .line 5739
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService;->acquireDVFSLockIntent_MIN(I)V

    .line 5743
    :goto_3
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_2

    .line 5741
    :cond_6
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    goto :goto_3
.end method

.method private applyButtonState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 3407
    const/4 v0, -0x1

    .line 3408
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3410
    and-int/lit8 p1, p1, -0x5

    .line 3432
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3413
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 3414
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 3427
    :cond_2
    :goto_1
    if-lez v0, :cond_6

    .line 3428
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 3415
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 3418
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    goto :goto_1

    .line 3419
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 3421
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 3422
    const/16 v0, 0xff

    goto :goto_1

    .line 3423
    :cond_5
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_2

    .line 3424
    const/4 v0, 0x0

    goto :goto_1

    .line 3429
    :cond_6
    if-nez v0, :cond_0

    .line 3430
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 3437
    const/4 v0, -0x1

    .line 3438
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3440
    and-int/lit8 p1, p1, -0x9

    .line 3463
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3442
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 3443
    const/4 v0, 0x0

    .line 3458
    :cond_2
    :goto_1
    if-lez v0, :cond_7

    .line 3459
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 3444
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 3445
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 3446
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 3449
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    goto :goto_1

    .line 3450
    :cond_5
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 3452
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 3453
    const/16 v0, 0xff

    goto :goto_1

    .line 3454
    :cond_6
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_2

    .line 3455
    const/4 v0, 0x0

    goto :goto_1

    .line 3460
    :cond_7
    if-nez v0, :cond_0

    .line 3461
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2920
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2096
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2098
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 2102
    return-void
.end method

.method private checkIntelligentSleep()Z
    .locals 5

    .prologue
    .line 2204
    const/4 v0, 0x0

    .line 2206
    .local v0, bIntelligentSleep:Z
    const-string v2, "PowerManagerService"

    const-string v3, "checkIntelligentSleep"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-nez v2, :cond_0

    .line 2209
    const-string v2, "PowerManagerService"

    const-string v3, "checkIntelligentSleep : getFaceDetectionManager()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-static {}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceDetectionManager()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    .line 2213
    :cond_0
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-eqz v2, :cond_1

    .line 2214
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->enable()V

    .line 2216
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceInfo()[Lcom/sec/android/facedetection/SecFace;

    move-result-object v1

    .line 2218
    .local v1, sf:[Lcom/sec/android/facedetection/SecFace;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 2219
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntelligentSleep : SecFace length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const/4 v0, 0x1

    .line 2226
    :goto_0
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->disable()V

    .line 2229
    .end local v1           #sf:[Lcom/sec/android/facedetection/SecFace;
    :cond_1
    return v0

    .line 2223
    .restart local v1       #sf:[Lcom/sec/android/facedetection/SecFace;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPreventAutoPowerOff()Z
    .locals 7

    .prologue
    .line 3561
    const/4 v2, 0x0

    .line 3562
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 3564
    .local v3, size:I
    const/4 v1, 0x0

    .line 3565
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 3566
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3567
    .local v0, eachCount:I
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APO : checkPreventAutoPowerOff : eachCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    if-lez v0, :cond_0

    .line 3570
    const/4 v2, 0x1

    .line 3565
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3575
    .end local v0           #eachCount:I
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APO : checkPreventAutoPowerOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    return v2
.end method

.method private convertSettingsRatioToWeightedRatio(I)F
    .locals 12
    .parameter "settingsRatio"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v8, 0x0

    .line 3919
    const/4 v3, 0x5

    .line 3920
    .local v3, maxSignedStep:I
    const/16 v2, 0x64

    .line 3921
    .local v2, maxSignedSettingsRatio:I
    const/high16 v4, 0x41a0

    .line 3923
    .local v4, scalingFactor:F
    const v1, 0x3dcccccd

    .line 3925
    .local v1, increaseFactorPerStep:F
    const/4 v6, 0x0

    .line 3926
    .local v6, weightedRatio:F
    add-int/lit8 v7, p1, -0x64

    int-to-float v7, v7

    iput v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    .line 3928
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 3929
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v5, 0x1

    .line 3930
    .local v5, settingsRatioSign:I
    :goto_0
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    const/high16 v8, 0x41a0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3931
    .local v0, convSettingsRatioToStep:F
    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    .line 3933
    int-to-float v7, v5

    const v8, 0x3dcccccd

    mul-float/2addr v7, v8

    add-float/2addr v7, v11

    float-to-double v7, v7

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v6, v7, v11

    .line 3940
    .end local v0           #convSettingsRatioToStep:F
    .end local v5           #settingsRatioSign:I
    :goto_1
    return v6

    .line 3929
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 3936
    :cond_1
    const/4 v6, 0x0

    .line 3937
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    goto :goto_1
.end method

.method private createFolderForMonitorEx()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 874
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    .local v0, monitorDir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 883
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 884
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5035
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 5039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5041
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5042
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5043
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5044
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 5046
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5050
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 5051
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 5053
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_1

    .line 5057
    const-string v2, "disableProximityLockLocked"

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 5058
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 5062
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 5048
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 4303
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 4304
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 4305
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_1

    .line 4307
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 4309
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4311
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 4312
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4313
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4315
    .end local v0           #value:I
    :cond_2
    monitor-exit v2

    .line 4316
    return-void

    .line 4315
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doseTopMostNeedsIntelligentSleep()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2184
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2185
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v7, 0x14

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2186
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 2200
    :goto_0
    return v7

    .line 2190
    :cond_0
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2191
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2192
    .local v5, pkgName:Ljava/lang/String;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2194
    .local v1, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2195
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 2197
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #p:Ljava/util/regex/Pattern;
    :cond_2
    move v7, v8

    .line 2200
    goto :goto_0
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private enableLightSensorLocked(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 5105
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableLightSensorLocked enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLightSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAutoBrightessEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWaitingForFirstLightSensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v3, :cond_0

    .line 5111
    const/4 p1, 0x0

    .line 5113
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v3, p1, :cond_2

    .line 5114
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 5116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5118
    .local v0, identity:J
    if-eqz p1, :cond_3

    .line 5119
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 5122
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 5123
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 5126
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 5128
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 5129
    .local v2, value:I
    if-ltz v2, :cond_1

    .line 5130
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 5131
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    .line 5133
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5138
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5153
    .end local v2           #value:I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5156
    .end local v0           #identity:J
    :cond_2
    return-void

    .line 5142
    .restart local v0       #identity:J
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5146
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5148
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5149
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 5150
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5153
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 5018
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 5022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5024
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5026
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5031
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 5028
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 6019
    const/4 v2, 0x0

    .line 6021
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6025
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6031
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 6032
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 6041
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 6026
    :catch_0
    move-exception v0

    .line 6027
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "PowerManagerService"

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6033
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6034
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6036
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 6037
    :catch_2
    move-exception v1

    .line 6038
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6033
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 2621
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 2622
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :goto_0
    return-void

    .line 2634
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    .line 3501
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3503
    const-string v1, "PowerManagerService"

    const-string v2, "forceUserActivityLocked  : isScreenTurningOffLocked : cancelAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3506
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3507
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 3509
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3510
    return-void
.end method

.method private getAdjustedDynamicAutoBrightnessValue(II)I
    .locals 8
    .parameter "lux"
    .parameter "origValue"

    .prologue
    const/4 v7, 0x0

    .line 3946
    const/4 v1, 0x0

    .line 3949
    .local v1, finalValue:I
    iget v5, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    mul-float v0, v5, v6

    .line 3952
    .local v0, fOffsetValue:F
    const/4 v4, 0x0

    .line 3956
    .local v4, minBrightnessStep:I
    const/4 v4, 0x2

    .line 3958
    iget v5, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    mul-int v3, v5, v4

    .line 3959
    .local v3, minBrightnessEachStep:I
    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 3961
    :cond_1
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdjustedDynamicAutoBrightnessValue : offset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    int-to-float v0, v3

    .line 3964
    :cond_2
    int-to-float v5, p2

    add-float/2addr v5, v0

    float-to-int v1, v5

    .line 3967
    const/16 v5, 0x1388

    if-lt p1, v5, :cond_3

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v5, :cond_3

    .line 3968
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdjustedDynamicAutoBrightnessValue : minBrightness : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3973
    :cond_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessValuesOrg:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 3974
    .local v2, lowLimit:I
    const/16 v5, 0xff

    if-le v1, v5, :cond_5

    .line 3975
    const/16 v1, 0xff

    .line 3980
    :cond_4
    :goto_0
    return v1

    .line 3976
    :cond_5
    if-ge v1, v2, :cond_4

    .line 3977
    move v1, v2

    goto :goto_0
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 14
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 4176
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v10, :cond_2

    .line 4178
    const/16 v6, 0xff

    .line 4180
    .local v6, origDynamicAutoBrightnessValue:I
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    if-ge v10, p1, :cond_1

    iget v10, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    if-gt p1, v10, :cond_1

    .line 4181
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAutoBrightnessValue : in bound ( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " <= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    :goto_0
    iget v8, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 4259
    .end local v6           #origDynamicAutoBrightnessValue:I
    :cond_0
    :goto_1
    return v8

    .line 4184
    .restart local v6       #origDynamicAutoBrightnessValue:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessValue(I)I

    move-result v6

    .line 4185
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessLowHysteresis(I)I

    move-result v10

    iput v10, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 4186
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessHighHysteresis(I)I

    move-result v10

    iput v10, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 4188
    invoke-direct {p0, p1, v6}, Lcom/android/server/PowerManagerService;->getFinalDynamicAutoBrightnessValue(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 4190
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAutoBrightnessValue : mDynamicAutoBrightnessValue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")  (( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    div-int/lit8 v12, v12, 0xa

    mul-int/lit8 v12, v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "))  ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")  ( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " <= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4255
    .end local v6           #origDynamicAutoBrightnessValue:I
    :catch_0
    move-exception v1

    .line 4257
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "PowerManagerService"

    const-string v11, "Values array must be non-empty and must be one element longer than the auto-brightness levels array.  Check config.xml."

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4259
    const/16 v8, 0xff

    goto/16 :goto_1

    .line 4198
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v10, v10

    if-ge v2, v10, :cond_3

    .line 4199
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v10, v10, v2

    if-ge p1, v10, :cond_6

    .line 4205
    :cond_3
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    if-ge v2, v10, :cond_8

    .line 4207
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    array-length v10, v10

    if-ge v3, v10, :cond_4

    .line 4208
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    aget v10, v10, v3

    if-gt p1, v10, :cond_7

    .line 4218
    :cond_4
    iput v3, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 4223
    .end local v3           #j:I
    :goto_4
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 4227
    const/4 v10, 0x0

    aget v5, p2, v10

    .line 4228
    .local v5, minval:I
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v10, v10

    aget v4, p2, v10

    .line 4232
    .local v4, maxval:I
    sub-int v10, v4, v5

    add-int/lit8 v7, v10, 0x14

    .line 4234
    .local v7, range:I
    aget v10, p2, v2

    sub-int/2addr v10, v5

    add-int/lit8 v10, v10, 0xa

    int-to-float v10, v10

    int-to-float v11, v7

    div-float v9, v10, v11

    .line 4236
    .local v9, valf:F
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v11, 0x3f80

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 4237
    const/high16 v10, 0x3f80

    iget v11, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v0, v10

    .line 4238
    .local v0, adj:F
    float-to-double v10, v0

    const-wide v12, 0x3ee4f8b588e368f1L

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_9

    .line 4239
    const/high16 v9, 0x3f80

    .line 4248
    .end local v0           #adj:F
    :cond_5
    :goto_5
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v11, 0x4100

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 4250
    int-to-float v10, v7

    mul-float/2addr v10, v9

    int-to-float v11, v5

    add-float/2addr v10, v11

    float-to-int v10, v10

    add-int/lit8 v8, v10, -0xa

    .line 4251
    .local v8, val:I
    if-ge v8, v5, :cond_b

    move v8, v5

    goto/16 :goto_1

    .line 4198
    .end local v4           #maxval:I
    .end local v5           #minval:I
    .end local v7           #range:I
    .end local v8           #val:I
    .end local v9           #valf:F
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4207
    .restart local v3       #j:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4221
    .end local v3           #j:I
    :cond_8
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    goto :goto_4

    .line 4241
    .restart local v0       #adj:F
    .restart local v4       #maxval:I
    .restart local v5       #minval:I
    .restart local v7       #range:I
    .restart local v9       #valf:F
    :cond_9
    div-float/2addr v9, v0

    goto :goto_5

    .line 4243
    .end local v0           #adj:F
    :cond_a
    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    iget v10, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    .line 4244
    const/high16 v10, 0x3f80

    iget v11, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    double-to-float v0, v10

    .line 4245
    .restart local v0       #adj:F
    mul-float/2addr v9, v0

    goto :goto_5

    .line 4252
    .end local v0           #adj:F
    .restart local v8       #val:I
    :cond_b
    if-le v8, v4, :cond_0

    move v8, v4

    goto/16 :goto_1
.end method

.method private getDebugLevel()I
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 4869
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4871
    .local v2, state:Ljava/lang/String;
    const/4 v0, -0x1

    .line 4872
    .local v0, debugLevel:I
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4889
    :cond_0
    :goto_0
    return v3

    .line 4877
    :cond_1
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4882
    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_0

    .line 4884
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_2

    .line 4885
    const/4 v3, 0x1

    goto :goto_0

    .line 4878
    :catch_0
    move-exception v1

    .line 4879
    .local v1, ne:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 4886
    .end local v1           #ne:Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_0

    move v3, v4

    .line 4887
    goto :goto_0
.end method

.method private getDynamicAutoBrightnessHighHysteresis(I)I
    .locals 11
    .parameter "cd"

    .prologue
    .line 4150
    const/4 v2, 0x0

    .line 4151
    .local v2, lux:I
    const/4 v1, 0x0

    .line 4153
    .local v1, i:I
    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 4154
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    .line 4156
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 4157
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 4158
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v2, v3, v1

    .line 4170
    .end local v2           #lux:I
    :goto_1
    return v2

    .line 4153
    .restart local v2       #lux:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4160
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 4161
    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    sub-int v7, p1, v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v2, v3

    goto :goto_1

    .line 4163
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4167
    :catch_0
    move-exception v0

    .line 4169
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PowerManagerService"

    const-string v4, "getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4170
    const/16 v2, 0x1388

    goto :goto_1
.end method

.method private getDynamicAutoBrightnessLowHysteresis(I)I
    .locals 11
    .parameter "cd"

    .prologue
    .line 4121
    const/4 v2, 0x0

    .line 4122
    .local v2, lux:I
    const/4 v1, 0x0

    .line 4124
    .local v1, i:I
    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 4125
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    .line 4129
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 4130
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 4142
    .end local v2           #lux:I
    :goto_1
    return v2

    .line 4124
    .restart local v2       #lux:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4132
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 4133
    const-wide/high16 v3, 0x4024

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    sub-int v7, p1, v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v2, v3

    goto :goto_1

    .line 4135
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4139
    :catch_0
    move-exception v0

    .line 4141
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PowerManagerService"

    const-string v4, "getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4142
    const/16 v2, 0x1388

    goto :goto_1
.end method

.method private getDynamicAutoBrightnessValue(I)I
    .locals 12
    .parameter "lux"

    .prologue
    const/16 v3, 0xff

    const-wide v10, 0x3f847ae147ae147bL

    .line 4061
    const/4 v0, 0x0

    .line 4062
    .local v0, cd:I
    const/4 v2, 0x0

    .line 4064
    .local v2, i:I
    const/4 v2, 0x1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 4065
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v4, v4, v2

    if-gt p1, v4, :cond_2

    .line 4069
    :cond_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 4070
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v0, v4, v5

    .line 4079
    :goto_1
    if-le v0, v3, :cond_5

    .line 4080
    const/16 v0, 0xff

    .line 4085
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 4090
    .end local v0           #cd:I
    :goto_3
    return v0

    .line 4064
    .restart local v0       #cd:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4072
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 4073
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v4, v4, v5

    int-to-double v6, p1

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    int-to-double v8, v8

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1

    .line 4075
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v5, v2, -0x1

    aget v0, v4, v5

    goto :goto_1

    .line 4081
    :cond_5
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ge v0, v4, :cond_1

    .line 4082
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    const/4 v5, 0x0

    aget v0, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4087
    :catch_0
    move-exception v1

    .line 4089
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PowerManagerService"

    const-string v5, "getDynamicAutoBrightnessValue"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 4090
    goto :goto_3
.end method

.method private getFinalDynamicAutoBrightnessValue(II)I
    .locals 6
    .parameter "lux"
    .parameter "origDynamicBrightness"

    .prologue
    const/high16 v5, 0x4220

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3984
    move v0, p2

    .line 3990
    .local v0, finalBrightness:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 3991
    if-nez p1, :cond_0

    .line 3992
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    const/high16 v2, -0x3de0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 3993
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v3

    .line 4001
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v1, v4

    if-ge v0, v1, :cond_1

    .line 4002
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v4

    .line 4005
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v1, v3

    if-ge v0, v1, :cond_2

    .line 4006
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v3

    .line 4009
    :cond_2
    return v0

    .line 3994
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_4

    .line 3995
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v4

    goto :goto_0

    .line 3997
    :cond_4
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0
.end method

.method private getPreferredBrightness()I
    .locals 2

    .prologue
    .line 3395
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v1, :cond_0

    .line 3396
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 3403
    :goto_0
    return v1

    .line 3397
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_1

    .line 3399
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 3401
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 3403
    .local v0, brightness:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSlope(IIIIZ)D
    .locals 10
    .parameter "ax"
    .parameter "ay"
    .parameter "bx"
    .parameter "by"
    .parameter "bReverse"

    .prologue
    const-wide v8, 0x3f847ae147ae147bL

    .line 4014
    const-wide/16 v0, 0x0

    .line 4015
    .local v0, slope:D
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    .line 4016
    :cond_0
    const-wide/16 v0, 0x0

    .line 4024
    :goto_0
    return-wide v0

    .line 4018
    :cond_1
    if-eqz p5, :cond_2

    .line 4019
    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_0

    .line 4021
    :cond_2
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_0
.end method

.method private goToSleepLocked(JI)V
    .locals 12
    .parameter "time"
    .parameter "reason"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4534
    iget-wide v7, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v7, v7, p1

    if-gtz v7, :cond_5

    .line 4535
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4537
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4538
    .local v5, uid:I
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen__Off : goToSleepLocked : uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  reason : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    .end local v3           #pid:I
    .end local v5           #uid:I
    :cond_0
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 4542
    iput v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 4543
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 4544
    .local v0, N:I
    const/4 v2, 0x0

    .line 4545
    .local v2, numCleared:I
    const/4 v4, 0x0

    .line 4546
    .local v4, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4547
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    .line 4548
    .local v6, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v7}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4549
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    const/4 v7, 0x4

    if-ne p3, v7, :cond_2

    .line 4551
    const/4 v4, 0x1

    .line 4546
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4553
    :cond_2
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v10, v7, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 4554
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4558
    .end local v6           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    if-nez v4, :cond_4

    .line 4559
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 4561
    const-string v7, "PowerManagerService"

    const-string v8, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    :cond_4
    const/16 v7, 0xaa4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4565
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 4566
    iput v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 4567
    invoke-direct {p0, v10, v10, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 4568
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 4573
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v4           #proxLock:Z
    :goto_2
    return-void

    .line 4571
    :cond_5
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "goToSleepLocked : not excuted : mLastEventTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleLightSensorValue(IZ)V
    .locals 10
    .parameter "value"
    .parameter "immediate"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5207
    .local v1, milliseconds:J
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 5208
    .local v0, beforeIsLockZone:Z
    iget v3, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    const/high16 v6, 0x428c

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    .line 5209
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 5213
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    if-eqz v3, :cond_0

    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 5217
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int p1, v3

    .line 5219
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    if-eq v0, v3, :cond_1

    .line 5220
    const-string v3, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsLockZone =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   mTiltAngle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    :cond_1
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/high16 v6, -0x4080

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    iget-wide v6, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    int-to-long v8, v3

    add-long/2addr v6, v8

    cmp-long v3, v1, v6

    if-ltz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    if-eqz v3, :cond_5

    .line 5228
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5229
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 5230
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 5231
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 5249
    :cond_3
    :goto_1
    return-void

    .line 5211
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    goto :goto_0

    .line 5233
    :cond_5
    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v3, :cond_8

    :cond_6
    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v3, :cond_8

    :cond_7
    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v3, :cond_c

    .line 5238
    :cond_8
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5239
    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_a

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 5240
    int-to-float v3, p1

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 5241
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-eqz v3, :cond_3

    .line 5242
    :cond_9
    int-to-float v3, p1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 5243
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_a
    move v3, v5

    .line 5239
    goto :goto_2

    :cond_b
    move v4, v5

    .line 5240
    goto :goto_3

    .line 5246
    :cond_c
    int-to-float v3, p1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    goto :goto_1
.end method

.method private initSupportedFrequency()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 5426
    const-string v6, "PowerManagerService"

    const-string v7, "initSupportedFrequency dvfs "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    if-nez v6, :cond_1

    .line 5428
    sget-boolean v6, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v6, :cond_2

    .line 5431
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5434
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5435
    .local v5, strSupportedFreq:[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 5436
    array-length v6, v5

    add-int/lit8 v4, v6, -0x1

    .line 5438
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-gt v3, v4, :cond_0

    .line 5439
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    sub-int v7, v4, v3

    aget-object v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 5440
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSupportedFrequency : DVFS : mSupportedFrequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    sub-int v9, v4, v3

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5443
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v5           #strSupportedFreq:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5444
    .local v2, exception:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 5445
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5452
    .end local v2           #exception:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5511
    .end local v0           #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    return-void

    .line 5446
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 5447
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5448
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5458
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 5459
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "PowerManagerService"

    const-string v7, "initSupportedFrequency : FileNotFoundException dvfs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    iput-object v10, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    goto :goto_2

    .line 5453
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 5454
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5455
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 5467
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/power/cpufreq_max_limit"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 5469
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5475
    :goto_3
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/power/cpufreq_min_limit"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 5477
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    .line 5483
    :goto_4
    :try_start_a
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/power/cpufreq_table"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    .line 5486
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5487
    .restart local v5       #strSupportedFreq:[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 5489
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 5490
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    .line 5491
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSupportedFrequency : DVFS : mSupportedFrequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    .line 5489
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 5470
    .end local v3           #i:I
    .end local v5           #strSupportedFreq:[Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 5471
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5472
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 5505
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 5506
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "PowerManagerService"

    const-string v7, "initSupportedFrequency : FileNotFoundException dvfs"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    iput-object v10, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    goto/16 :goto_2

    .line 5478
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .line 5479
    .local v1, e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5480
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    goto :goto_4

    .line 5494
    .end local v1           #e:Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 5495
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5496
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5

    .line 5500
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 5501
    :catch_8
    move-exception v1

    .line 5502
    .local v1, e:Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5503
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_2
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 1245
    and-int/lit8 v0, p1, 0x3f

    .line 1246
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v0, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #getter for: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$8400(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 2075
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(IZ)V
    .locals 9
    .parameter "value"
    .parameter "immediate"

    .prologue
    const/4 v8, -0x2

    .line 4320
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 4326
    const-string v5, "PowerManagerService"

    const-string v6, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_0
    :goto_0
    return-void

    .line 4331
    :cond_1
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 4332
    int-to-float v5, p1

    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4333
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    .line 4337
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 4338
    .local v2, lcdValue:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 4340
    .local v0, buttonValue:I
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v5, :cond_4

    .line 4341
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 4346
    .local v1, keyboardValue:I
    :goto_1
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-ltz v5, :cond_2

    .line 4347
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-le v2, v5, :cond_2

    .line 4348
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 4349
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of UpperLimit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_2
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ltz v5, :cond_3

    .line 4353
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ge v2, v5, :cond_3

    .line 4354
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 4355
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of LowerLimit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    :cond_3
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 4360
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 4361
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 4364
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lcdValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buttonValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyboardValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 4372
    const-string v5, "PowerManagerService"

    const-string v6, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4343
    .end local v1           #keyboardValue:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #keyboardValue:I
    goto/16 :goto_1

    .line 4377
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v5, :cond_8

    .line 4379
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v5, :cond_6

    .line 4380
    sget v5, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v3, v2, v5

    .line 4381
    .local v3, powerSaveModeBrightness:I
    if-lez v2, :cond_6

    .line 4382
    const/16 v5, 0xa

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4383
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mSystemPowerSaveModeEnabled:: lcdValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    .end local v3           #powerSaveModeBrightness:I
    :cond_6
    iget v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le v2, v5, :cond_7

    .line 4388
    iget v2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 4389
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : brightness is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of temperature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    if-nez v5, :cond_8

    .line 4394
    if-eqz p2, :cond_c

    .line 4395
    const/4 v4, 0x4

    .line 4405
    .local v4, steps:I
    :goto_2
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v6, 0x2

    mul-int/lit8 v7, v4, 0x10

    invoke-virtual {v5, v2, p1, v6, v7}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 4409
    .end local v4           #steps:I
    :cond_8
    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v5, v8, :cond_9

    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v5, :cond_9

    .line 4410
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mButtonLight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4413
    :cond_9
    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v5, v8, :cond_a

    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v5, :cond_b

    :cond_a
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v5, :cond_0

    .line 4414
    :cond_b
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mKeyboardLight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_0

    .line 4397
    :cond_c
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v6

    .line 4398
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v5, v5, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-gt v5, v2, :cond_d

    .line 4399
    const/16 v4, 0x14

    .line 4403
    .restart local v4       #steps:I
    :goto_3
    monitor-exit v6

    goto :goto_2

    .end local v4           #steps:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4401
    :cond_d
    const/16 v4, 0x14

    .restart local v4       #steps:I
    goto :goto_3
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1764
    sparse-switch p0, :sswitch_data_0

    .line 1777
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1767
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1769
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1771
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1773
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1775
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1764
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method public static lowLevelShutdown()V
    .locals 0

    .prologue
    .line 1174
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeShutdown()V

    .line 1175
    return-void
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeAcquireWakeLock(ILjava/lang/String;)V
.end method

.method private static native nativeFakeOff()I
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativeReleaseWakeLock(Ljava/lang/String;)V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeSetScreenState(Z)I
.end method

.method private static native nativeShutdown()V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private printAutoBrightnessTables()V
    .locals 5

    .prologue
    .line 3842
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessLevels:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessLevels:Ljava/lang/String;

    .line 3842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3845
    :cond_0
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessLevels:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

    .line 3846
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3849
    :cond_1
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrLcdBacklightValues:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrLcdBacklightValues:Ljava/lang/String;

    .line 3850
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3853
    :cond_2
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrLcdBacklightValues:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_7

    .line 3856
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mValueOfVirtualZeroCandela = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrLowHysteresisPoints:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrLowHysteresisPoints:Ljava/lang/String;

    .line 3857
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3860
    :cond_3
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrLowHysteresisPoints:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrBrightnessValuePoints:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrBrightnessValuePoints:Ljava/lang/String;

    .line 3861
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3864
    :cond_4
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrBrightnessValuePoints:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 3866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrHighHysteresisPoints:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrHighHysteresisPoints:Ljava/lang/String;

    .line 3865
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3868
    :cond_5
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrHighHysteresisPoints:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v2, :cond_7

    .line 3870
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 3871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

    .line 3870
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3873
    :cond_6
    const-string v2, "PowerManagerService"

    sget-object v3, Lcom/android/server/PowerManagerService;->mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3879
    :cond_7
    :goto_7
    return-void

    .line 3876
    :catch_0
    move-exception v0

    .line 3877
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "printAutoBrightnessTables"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private printCurLock(I)V
    .locals 13
    .parameter "pos"

    .prologue
    .line 5355
    iget v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    if-nez v10, :cond_2

    iget v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    if-eqz v10, :cond_2

    .line 5357
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurLock p:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mPS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5358
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 5359
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5360
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 5361
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 5363
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$WakeLock;

    .line 5364
    .local v9, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v10, v10, 0x3f

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v8

    .line 5365
    .local v8, type:Ljava/lang/String;
    const-string v1, ""

    .line 5366
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v11, 0x1000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 5367
    const-string v1, " AW "

    .line 5369
    :cond_0
    const-string v2, ""

    .line 5370
    .local v2, activated:Ljava/lang/String;
    iget-boolean v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v10, :cond_1

    .line 5371
    const-string v2, " active"

    .line 5373
    :cond_1
    iget-wide v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v10

    .line 5374
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (minState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " activeT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5378
    .end local v0           #N:I
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    return-void
.end method

.method private printCurLockForce(Z)V
    .locals 15
    .parameter "screenOn"

    .prologue
    .line 5384
    if-nez p1, :cond_3

    .line 5386
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CurLockF mPS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mUS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 5388
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5389
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 5390
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 5392
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PowerManagerService$WakeLock;

    .line 5393
    .local v11, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v12, v12, 0x3f

    invoke-static {v12}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v10

    .line 5394
    .local v10, type:Ljava/lang/String;
    const-string v1, ""

    .line 5395
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v13, 0x1000

    and-int/2addr v12, v13

    if-eqz v12, :cond_0

    .line 5396
    const-string v1, " AW "

    .line 5398
    :cond_0
    const-string v2, ""

    .line 5399
    .local v2, activated:Ljava/lang/String;
    iget-boolean v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v12, :cond_1

    .line 5400
    const-string v2, " active"

    .line 5402
    :cond_1
    iget-wide v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v12

    .line 5403
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  activeT="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5407
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPokeLocks.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$PokeLock;

    .line 5410
    .local v9, p:Lcom/android/server/PowerManagerService$PokeLock;
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " pokeLock "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5414
    .end local v0           #N:I
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_3
    return-void
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 5066
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 5069
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_0
    :goto_0
    return-void

    .line 5072
    :cond_1
    if-eqz p1, :cond_3

    .line 5074
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_2

    .line 5078
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 5081
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 5086
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 5088
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 5092
    const-string v0, "proximity : far"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 5093
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 5096
    :cond_4
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_0

    .line 5098
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private releaseDVFSLockLocked(Landroid/os/IBinder;)V
    .locals 8
    .parameter "lock"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 5797
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    .line 5798
    .local v2, removedDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    if-nez v2, :cond_0

    .line 5856
    :goto_0
    return-void

    .line 5803
    :cond_0
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v7, :cond_5

    .line 5804
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_1

    .line 5805
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v1

    .line 5807
    .local v1, nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v1, :cond_3

    .line 5808
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    sget-boolean v3, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v3, :cond_2

    .line 5810
    iget v3, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService;->acquireDVFSLockIntent_MAX(I)V

    .line 5815
    :goto_1
    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5855
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_1
    :goto_2
    iget-object v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 5812
    .restart local v1       #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_2
    iget v3, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v7, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    goto :goto_1

    .line 5818
    :cond_3
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    sget-boolean v3, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v3, :cond_4

    .line 5820
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->releaseDVFSLockIntent_MAX()V

    .line 5824
    :goto_3
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_2

    .line 5822
    :cond_4
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->nativeReleaseDVFSLock(I)I

    goto :goto_3

    .line 5828
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_5
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v6, :cond_1

    .line 5829
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_1

    .line 5830
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v0

    .line 5832
    .local v0, nextMaxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v0, :cond_7

    .line 5833
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5834
    sget-boolean v3, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v3, :cond_6

    .line 5835
    iget v3, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService;->acquireDVFSLockIntent_MIN(I)V

    .line 5840
    :goto_4
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_2

    .line 5837
    :cond_6
    iget v3, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v6, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    goto :goto_4

    .line 5843
    :cond_7
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5844
    sget-boolean v3, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v3, :cond_8

    .line 5845
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->releaseDVFSLockIntent_MIN()V

    .line 5849
    :goto_5
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_2

    .line 5847
    :cond_8
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->nativeReleaseDVFSLock(I)I

    goto :goto_5
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 12
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1610
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v10

    .line 1611
    .local v10, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v10, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-boolean v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->isReleasedInternal:Z

    if-nez v0, :cond_0

    .line 1626
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1627
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1628
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1629
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLockLocked : PROXIMITY_SCREEN_OFF_WAKE_LOCK : mProximityWakeLockCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_2

    .line 1632
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1636
    const-string v0, "PowerManagerService"

    const-string v1, "waiting for proximity sensor to go negative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_2
    :goto_1
    iget-object v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v10, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1676
    iget-object v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v10, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1639
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1643
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1645
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1646
    const-string v0, "PowerManagerService"

    const-string v1, "releaseWakeLockLocked : ON_AFTER_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const-string v0, "ON_AFTER_RELEASE wake lock"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 1648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 1651
    :cond_5
    invoke-direct {p0, v11}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    move v9, v8

    .line 1653
    .local v9, bGoOff:Z
    :goto_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_7

    const-string v0, "Screen__Off : "

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "releaseWakeLockLocked flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .end local v9           #bGoOff:Z
    :cond_6
    move v9, v5

    .line 1652
    goto :goto_2

    .line 1653
    .restart local v9       #bGoOff:Z
    :cond_7
    const-string v0, ""

    goto :goto_3

    .line 1657
    .end local v9           #bGoOff:Z
    :cond_8
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    if-ne v0, v8, :cond_2

    .line 1658
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1660
    const/16 v0, 0xaa9

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1663
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_2

    .line 1665
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    if-nez v0, :cond_9

    .line 1666
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->nativeReleaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1669
    :cond_9
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLockLocked : mForceDisableWakeLock : NOT released : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2898
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->printCurLockForce(Z)V

    .line 2900
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2905
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2907
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2908
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2909
    .local v0, err:I
    if-nez v0, :cond_0

    .line 2910
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2911
    invoke-direct {p0, v6, p1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2914
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2916
    return v0
.end method

.method private sendBrightnessModeBySysfs(I)V
    .locals 6
    .parameter "lux"

    .prologue
    const/16 v5, 0x1388

    const/16 v4, 0x3e8

    const/16 v3, 0x96

    const/16 v2, 0xf

    const/4 v1, 0x5

    .line 4096
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v0, :cond_6

    .line 4097
    if-ge p1, v2, :cond_0

    .line 4098
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    .line 4115
    :goto_0
    return-void

    .line 4099
    :cond_0
    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    .line 4100
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4101
    :cond_1
    if-lt p1, v3, :cond_2

    if-ge p1, v4, :cond_2

    .line 4102
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4103
    :cond_2
    if-lt p1, v4, :cond_3

    if-ge p1, v5, :cond_3

    .line 4104
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4105
    :cond_3
    if-lt p1, v5, :cond_4

    const v0, 0x9c40

    if-ge p1, v0, :cond_4

    .line 4106
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4107
    :cond_4
    const v0, 0x9c40

    if-lt p1, v0, :cond_5

    .line 4108
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4110
    :cond_5
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4113
    :cond_6
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 9
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v8, 0xaa7

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2233
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 2318
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotificationLocked on="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    if-nez p1, :cond_2

    .line 2251
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 2255
    :cond_2
    const/4 v0, 0x0

    .line 2256
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v6, :cond_3

    .line 2257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2259
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 2260
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 2269
    if-ne v0, v7, :cond_5

    .line 2272
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 2273
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 2275
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 2276
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 2277
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v7

    .line 2278
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2279
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2280
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2281
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2282
    const/4 v0, 0x0

    .line 2284
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 2285
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v4, v4, v2

    if-ne v1, v4, :cond_a

    .line 2286
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 2287
    const/4 v0, 0x0

    .line 2288
    new-array v1, v7, [Ljava/lang/Object;

    const/16 v4, 0x63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2289
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2304
    :cond_6
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    .line 2305
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2309
    :cond_7
    if-ltz v0, :cond_0

    .line 2314
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2315
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2316
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 2259
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 2275
    goto/16 :goto_3

    .line 2292
    :cond_a
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v3

    .line 2293
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 2294
    const/4 v0, -0x1

    .line 2297
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2298
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_4
.end method

.method public static setAmoledACL(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 6084
    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    const/4 v0, 0x0

    return v0
.end method

.method private setDynamicAutoBrightnessSlopeTables()V
    .locals 12

    .prologue
    .line 4031
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 4032
    .local v10, lengthOfLowHysteresisSlope:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 4033
    .local v8, lengthOfBrightnessValueSlope:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 4035
    .local v9, lengthOfHighHysteresisSlope:I
    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[D

    .line 4036
    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[D

    .line 4037
    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[D

    .line 4038
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 4039
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    .line 4038
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4042
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 4043
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    .line 4042
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4046
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_2

    .line 4047
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    .line 4046
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4050
    :cond_2
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->printAutoBrightnessTables()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4055
    .end local v7           #i:I
    .end local v8           #lengthOfBrightnessValueSlope:I
    .end local v9           #lengthOfHighHysteresisSlope:I
    .end local v10           #lengthOfLowHysteresisSlope:I
    :goto_3
    return-void

    .line 4051
    :catch_0
    move-exception v6

    .line 4052
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "PowerManagerService"

    const-string v1, "setDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3392
    return-void
.end method

.method private setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2703
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2704
    return-void
.end method

.method private setPowerState(IZI)V
    .locals 15
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 2708
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 2718
    if-eqz p2, :cond_0

    .line 2719
    and-int/lit8 v9, p1, -0xf

    :try_start_0
    iget v11, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0xe

    or-int p1, v9, v11

    .line 2721
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v9, :cond_1

    .line 2723
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState : mProximitySensorActive is true , so SCREEN_BRIGHT bits is cleared, orig newState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    and-int/lit8 p1, p1, -0x10

    .line 2727
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2728
    and-int/lit8 v9, p1, -0xf

    or-int/lit8 p1, v9, 0x10

    .line 2735
    :goto_0
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_2

    .line 2738
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyButtonState(I)I

    move-result p1

    .line 2739
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2742
    :cond_2
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v9, :cond_4

    .line 2743
    monitor-exit v10

    .line 2887
    :goto_1
    return-void

    .line 2730
    :cond_3
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 2746
    :cond_4
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_5

    .line 2747
    const-string v9, "PowerManagerService"

    const-string v11, "setPowerState : mBootCompleted : false, newState |= ALL_BRIGHT"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    or-int/lit8 p1, p1, 0xf

    .line 2751
    :cond_5
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    const/4 v6, 0x1

    .line 2752
    .local v6, oldScreenOn:Z
    :goto_2
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_7

    const/4 v5, 0x1

    .line 2769
    .local v5, newScreenOn:Z
    :goto_3
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_8

    const/4 v8, 0x1

    .line 2771
    .local v8, stateChanged:Z
    :goto_4
    if-eqz v8, :cond_9

    const/4 v9, 0x3

    move/from16 v0, p3

    if-ne v0, v9, :cond_9

    .line 2772
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->isScreenSaverEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2776
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->startScreenSaver()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2778
    monitor-exit v10

    goto :goto_1

    .line 2886
    .end local v5           #newScreenOn:Z
    .end local v6           #oldScreenOn:Z
    .end local v8           #stateChanged:Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2751
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 2752
    .restart local v6       #oldScreenOn:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 2769
    .restart local v5       #newScreenOn:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 2784
    .restart local v8       #stateChanged:Z
    :cond_9
    if-eq v6, v5, :cond_11

    .line 2785
    if-eqz v5, :cond_e

    .line 2802
    const/4 v7, 0x1

    .line 2808
    .local v7, reallyTurnScreenOn:Z
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v9, :cond_a

    .line 2810
    const-string v9, "PowerManagerService"

    const-string v11, "- PREVENTING screen from really turning on!"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/4 v7, 0x0

    .line 2814
    :cond_a
    if-eqz v7, :cond_d

    .line 2815
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v2

    .line 2816
    .local v2, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 2818
    .local v3, identity:J
    :try_start_2
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2819
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2823
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2831
    .end local v3           #identity:J
    :goto_5
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2832
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2833
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2834
    const/16 v9, 0xaa8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2836
    if-nez v2, :cond_c

    .line 2837
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2842
    if-eqz v8, :cond_b

    .line 2843
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2845
    :cond_b
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2883
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_c
    :goto_6
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x1f

    and-int/lit8 v11, p1, 0x1e

    or-int/2addr v9, v11

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2885
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2886
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2820
    .restart local v2       #err:I
    .restart local v3       #identity:J
    .restart local v7       #reallyTurnScreenOn:Z
    :catch_0
    move-exception v1

    .line 2821
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2823
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2826
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_d
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2828
    const/4 v2, 0x0

    .restart local v2       #err:I
    goto :goto_5

    .line 2851
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_e
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2852
    if-eqz v8, :cond_f

    .line 2853
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2857
    :cond_f
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2858
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2859
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v3

    .line 2863
    .restart local v3       #identity:J
    :try_start_6
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2867
    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2869
    :goto_7
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2870
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_10

    .line 2871
    const-string v9, "PowerManagerService"

    const-string v11, "setPowerState : screenOffFinishedAnimatingLocked"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .restart local v2       #err:I
    goto :goto_6

    .line 2864
    .end local v2           #err:I
    :catch_1
    move-exception v1

    .line 2865
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2867
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2874
    :cond_10
    const/4 v2, 0x0

    .line 2875
    .restart local v2       #err:I
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto/16 :goto_6

    .line 2878
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_11
    if-eqz v8, :cond_c

    .line 2880
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6
.end method

.method private setScreenBrightnessMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4629
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 4630
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 4631
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v3, v0, :cond_1

    .line 4632
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 4633
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v3, v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 4635
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 4636
    const-string v3, "PMSCabl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScreenBrightnessMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mCablTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4640
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4642
    :cond_1
    monitor-exit v4

    .line 4643
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v2

    .line 4630
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_3
    move v3, v2

    .line 4633
    goto :goto_1

    :cond_4
    move v1, v2

    .line 4640
    goto :goto_2

    .line 4642
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x1770

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4651
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 4652
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4653
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4654
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4709
    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    return-void

    .line 4655
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 4656
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4657
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4658
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4659
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 4660
    iput v6, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4661
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4662
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4665
    :cond_2
    const/4 v0, 0x0

    .line 4667
    .local v0, totalDelay:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 4668
    iget v1, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4669
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATT: setScreenOffTimeouts mDeviceLockTimeoutSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    :goto_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_3

    .line 4675
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 4678
    :cond_3
    iput v6, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4679
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v1, v4, :cond_6

    .line 4690
    :cond_4
    :goto_2
    if-gez v0, :cond_7

    .line 4692
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4701
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    add-int/lit16 v1, v1, 0x1b58

    if-lt v0, v1, :cond_9

    .line 4702
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4703
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto/16 :goto_0

    .line 4672
    :cond_5
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    goto :goto_1

    .line 4681
    :cond_6
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    .line 4683
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_4

    .line 4687
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    goto :goto_2

    .line 4693
    :cond_7
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_8

    .line 4697
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_3

    .line 4699
    :cond_8
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_3

    .line 4705
    :cond_9
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto/16 :goto_0
.end method

.method private setScreenStateLocked(Z)I
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 2652
    if-eqz p1, :cond_1

    .line 2653
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    .line 2668
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2673
    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    if-nez v1, :cond_3

    .line 2674
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    .line 2675
    .local v0, err:I
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeFakeOff()I

    move-result v0

    .line 2676
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    .line 2683
    :goto_0
    if-nez v0, :cond_2

    .line 2684
    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 2685
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 2686
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 2687
    if-eqz p1, :cond_5

    .line 2690
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 2698
    :cond_2
    :goto_2
    return v0

    .line 2679
    .end local v0           #err:I
    :cond_3
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    .line 2680
    .restart local v0       #err:I
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    goto :goto_0

    .line 2684
    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 2693
    :cond_5
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2694
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_2
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1964
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1965
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 9
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1971
    move-wide v0, p3

    .line 1972
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 1973
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1974
    const-wide/16 v2, 0x0

    .line 1975
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1976
    packed-switch p5, :pswitch_data_0

    .line 1994
    :pswitch_0
    move-wide v2, p1

    .line 2062
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2063
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 2064
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    sub-long v4, p3, v0

    :goto_1
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 2067
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2068
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 2069
    monitor-exit v6

    .line 2071
    .end local v2           #when:J
    :cond_0
    return-void

    .line 1979
    .restart local v2       #when:J
    :pswitch_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1980
    goto :goto_0

    .line 1982
    :pswitch_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_1

    .line 1983
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1984
    goto :goto_0

    .line 1986
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1990
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1991
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 2069
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1999
    :cond_2
    :try_start_3
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTimeoutLocked :  override : timeoutOverride : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 2001
    add-long v2, p1, v0

    .line 2002
    const/4 p5, 0x0

    .line 2003
    goto/16 :goto_0

    .line 2005
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 2007
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_5

    .line 2008
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    .line 2009
    add-long v2, p1, v0

    .line 2010
    const/4 p5, 0x1

    .line 2011
    goto/16 :goto_0

    .line 2013
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 2016
    :cond_5
    add-long v2, p1, v0

    .line 2017
    const/4 p5, 0x3

    goto/16 :goto_0

    .line 2064
    :cond_6
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    .line 1976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2925
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_1

    .line 2944
    :cond_0
    :goto_0
    return v1

    .line 2936
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2937
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2936
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2944
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3486
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3487
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 3488
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 3489
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3490
    monitor-exit v2

    .line 3495
    :goto_0
    return v0

    .line 3491
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 3492
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3493
    monitor-exit v2

    goto :goto_0

    .line 3497
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3495
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private shutdown(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 4481
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4482
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too early to call shutdown()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4484
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APO : shutdown. reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    move-object v0, p1

    .line 4487
    .local v0, finalReason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/PowerManagerService$17;

    invoke-direct {v2, p0, v0}, Lcom/android/server/PowerManagerService$17;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4506
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 6107
    const/4 v2, 0x0

    .line 6111
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6117
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 6118
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6128
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 6112
    :catch_0
    move-exception v0

    .line 6113
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6119
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6120
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6122
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 6123
    :catch_2
    move-exception v1

    .line 6124
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6119
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private testAutoBrightnessSpec()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 3823
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xc8

    if-gt v0, v3, :cond_1

    .line 3824
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->setRatioOfAutoBrightness(I)V

    .line 3825
    const/16 v3, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 3827
    .local v2, luxArray:[I
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------------------------- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---------------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3829
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3830
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3831
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3832
    aget v3, v2, v1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3828
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3823
    :cond_0
    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 3835
    .end local v1           #j:I
    .end local v2           #luxArray:[I
    :cond_1
    return-void

    .line 3825
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x58t 0x1bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0x97t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
    .end array-data
.end method

.method private updateLightsLocked(II)V
    .locals 23
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2948
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2952
    .local v11, oldState:I
    and-int/lit8 v20, v11, 0x1

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2956
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v20, :cond_1

    .line 2957
    and-int/lit8 p1, p1, -0x4

    .line 2971
    :cond_1
    xor-int v16, p1, v11

    .line 2972
    .local v16, realDifference:I
    or-int v4, v16, p2

    .line 2973
    .local v4, difference:I
    if-nez v4, :cond_3

    .line 3134
    :cond_2
    :goto_0
    return-void

    .line 2977
    :cond_3
    const/4 v10, 0x0

    .line 2978
    .local v10, offMask:I
    const/4 v5, 0x0

    .line 2979
    .local v5, dimMask:I
    const/4 v12, 0x0

    .line 2981
    .local v12, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v14

    .line 2983
    .local v14, preferredBrightness:I
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ulight 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "->0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "|0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    and-int/lit8 v20, v4, 0x8

    if-eqz v20, :cond_4

    .line 2986
    and-int/lit8 v20, p1, 0x8

    if-nez v20, :cond_11

    .line 2987
    or-int/lit8 v10, v10, 0x8

    .line 2993
    :cond_4
    :goto_1
    and-int/lit8 v20, v4, 0x4

    if-eqz v20, :cond_5

    .line 2994
    and-int/lit8 v20, p1, 0x4

    if-nez v20, :cond_12

    .line 2995
    or-int/lit8 v10, v10, 0x4

    .line 3001
    :cond_5
    :goto_2
    and-int/lit8 v20, v4, 0x3

    if-eqz v20, :cond_c

    .line 3002
    const/4 v9, -0x1

    .line 3008
    .local v9, nominalCurrentValue:I
    and-int/lit8 v20, v16, 0x3

    if-eqz v20, :cond_6

    .line 3009
    and-int/lit8 v20, v11, 0x3

    packed-switch v20, :pswitch_data_0

    .line 3022
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getCurrentBrightness()I

    move-result v9

    .line 3026
    :cond_6
    :goto_3
    move v3, v14

    .line 3027
    .local v3, brightness:I
    const/16 v19, 0xa

    .line 3028
    .local v19, steps:I
    and-int/lit8 v20, p1, 0x2

    if-nez v20, :cond_8

    .line 3032
    const/high16 v17, 0x3fc0

    .line 3033
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 3034
    .local v15, ratio:F
    const/high16 v20, 0x3f80

    cmpl-float v20, v15, v20

    if-lez v20, :cond_7

    const/high16 v15, 0x3f80

    .line 3035
    :cond_7
    and-int/lit8 v20, p1, 0x1

    if-nez v20, :cond_14

    .line 3036
    and-int/lit8 v20, v11, 0x2

    if-eqz v20, :cond_13

    .line 3038
    const/16 v19, 0xa

    .line 3043
    :goto_4
    const/4 v3, 0x0

    .line 3064
    .end local v15           #ratio:F
    .end local v17           #scale:F
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    and-int/lit8 v20, p1, 0x1

    if-eqz v20, :cond_9

    .line 3065
    const/16 v19, 0x4

    .line 3068
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3070
    .local v7, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3078
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 3079
    sget v20, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v13, v3, v20

    .line 3080
    .local v13, powerSaveModeBrightness:I
    if-lez v3, :cond_a

    .line 3081
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3082
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateLightsLocked : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v13           #powerSaveModeBrightness:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v20, v0

    if-ltz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v3, v0, :cond_b

    .line 3087
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3088
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateLightsLocked : brightness is changed to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " because of temperature"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 3092
    mul-int/lit8 v6, v19, 0x10

    .line 3093
    .local v6, dt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1, v6}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3112
    .end local v3           #brightness:I
    .end local v6           #dt:I
    .end local v7           #identity:J
    .end local v9           #nominalCurrentValue:I
    .end local v19           #steps:I
    :cond_c
    if-eqz v10, :cond_d

    .line 3114
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 3116
    :cond_d
    if-eqz v5, :cond_f

    .line 3117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 3118
    .restart local v3       #brightness:I
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_e

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v3, v0, :cond_e

    .line 3120
    const/16 v3, 0xa

    .line 3123
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 3125
    .end local v3           #brightness:I
    :cond_f
    if-eqz v12, :cond_2

    .line 3126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .line 3127
    .restart local v3       #brightness:I
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_10

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v3, v0, :cond_10

    .line 3129
    const/16 v3, 0xa

    .line 3132
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_0

    .line 2989
    .end local v3           #brightness:I
    :cond_11
    or-int/lit8 v12, v12, 0x8

    goto/16 :goto_1

    .line 2997
    :cond_12
    or-int/lit8 v12, v12, 0x4

    goto/16 :goto_2

    .line 3011
    .restart local v9       #nominalCurrentValue:I
    :pswitch_1
    move v9, v14

    .line 3012
    goto/16 :goto_3

    .line 3014
    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 3015
    goto/16 :goto_3

    .line 3017
    :pswitch_3
    const/4 v9, 0x0

    .line 3018
    goto/16 :goto_3

    .line 3041
    .restart local v3       #brightness:I
    .restart local v15       #ratio:F
    .restart local v17       #scale:F
    .restart local v19       #steps:I
    :cond_13
    const/high16 v20, 0x4120

    mul-float v20, v20, v15

    const/high16 v21, 0x3fc0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_4

    .line 3045
    :cond_14
    and-int/lit8 v20, v11, 0x1

    if-eqz v20, :cond_16

    .line 3047
    const/high16 v20, 0x4120

    const/high16 v21, 0x3f80

    sub-float v21, v21, v15

    mul-float v20, v20, v21

    const/high16 v21, 0x3fc0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3052
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v18

    .line 3053
    .local v18, stayOnConditions:I
    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 3059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 3061
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_5

    .line 3050
    .end local v18           #stayOnConditions:I
    :cond_16
    const/high16 v20, 0x4120

    mul-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_7

    .line 3071
    .end local v15           #ratio:F
    .end local v17           #scale:F
    .restart local v7       #identity:J
    :catch_0
    move-exception v20

    .line 3074
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_0
    move-exception v20

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 3009
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2890
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    if-nez v0, :cond_0

    .line 2891
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2895
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2891
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 4727
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    .line 4730
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT: updateSettingsValues : update : mDeviceLockTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 4735
    :cond_0
    return-void
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v0

    .line 1233
    .local v0, stayOnConditions:I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1236
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1241
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1239
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZZ)V
    .locals 18
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"
    .parameter "ignoreIfScreenOff"

    .prologue
    .line 3646
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_1

    .line 3648
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropping touch mPokey=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3793
    :cond_0
    :goto_0
    return-void

    .line 3654
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3667
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v3, :cond_3

    .line 3668
    if-nez p6, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    if-eqz v3, :cond_3

    .line 3669
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3670
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    .line 3671
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long v15, v3, v5

    .line 3672
    .local v15, when:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    move-wide v0, v15

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 3678
    .end local v15           #when:J
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3679
    const-string v3, "PowerManagerService"

    const-string v4, "ignoring user activity while turning off screen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    monitor-exit v17

    goto :goto_0

    .line 3788
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3684
    :cond_4
    if-eqz p8, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    .line 3685
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : ignoreIfScreenOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mPowerState 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    monitor-exit v17

    goto/16 :goto_0

    .line 3690
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v3, :cond_6

    .line 3691
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3693
    :cond_6
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_7

    if-eqz p7, :cond_1b

    .line 3694
    :cond_7
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3695
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v3, :cond_9

    :cond_8
    if-eqz p7, :cond_10

    .line 3696
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3701
    .local v13, prevUserState:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_11

    :cond_a
    const/4 v9, 0x1

    .line 3706
    .local v9, byApplyButtonState:Z
    :goto_1
    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_14

    if-nez v9, :cond_14

    .line 3707
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    if-eqz v3, :cond_13

    .line 3708
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_12

    const/16 v3, 0xf

    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3726
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v9, :cond_b

    .line 3727
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3732
    :cond_b
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    if-eqz v3, :cond_19

    .line 3733
    if-nez v9, :cond_c

    .line 3734
    const/4 v3, 0x3

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_18

    .line 3751
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3752
    .local v14, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 3754
    .local v10, ident:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v3, v14, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3758
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3761
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3762
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 3763
    .local v12, pid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 3764
    if-eqz p6, :cond_1a

    .line 3765
    const-string v3, "input"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3771
    :cond_d
    :goto_6
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen__On : userActivity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    .end local v12           #pid:I
    :cond_e
    if-nez v13, :cond_f

    .line 3774
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : mUserState 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3778
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 3779
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3781
    const/4 v8, 0x3

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 3787
    .end local v9           #byApplyButtonState:Z
    .end local v10           #ident:J
    .end local v13           #prevUserState:I
    .end local v14           #uid:I
    :cond_10
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3788
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v3, :cond_0

    .line 3791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_0

    .line 3701
    .restart local v13       #prevUserState:I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3708
    .restart local v9       #byApplyButtonState:Z
    :cond_12
    const/4 v3, 0x7

    goto/16 :goto_2

    .line 3711
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3714
    :cond_14
    const/4 v3, 0x3

    move/from16 v0, p6

    if-ne v0, v3, :cond_15

    if-nez v9, :cond_15

    .line 3715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3717
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_17

    if-nez v9, :cond_17

    .line 3718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_16

    const/16 v3, 0xb

    :goto_8
    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    :cond_16
    const/4 v3, 0x3

    goto :goto_8

    .line 3722
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3736
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    if-eqz v3, :cond_c

    .line 3737
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v3, v3, -0xd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_4

    .line 3742
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/16 v4, 0x5dc

    if-ne v3, v4, :cond_c

    .line 3743
    const/4 v3, 0x3

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    .line 3745
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    if-eqz v3, :cond_c

    .line 3746
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v3, v3, -0xd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_4

    .line 3755
    .restart local v10       #ident:J
    .restart local v14       #uid:I
    :catch_0
    move-exception v3

    .line 3758
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3768
    .restart local v12       #pid:I
    :cond_1a
    const-string v3, "other"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    goto/16 :goto_6

    .line 3785
    .end local v9           #byApplyButtonState:Z
    .end local v10           #ident:J
    .end local v12           #pid:I
    .end local v13           #prevUserState:I
    .end local v14           #uid:I
    :cond_1b
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : not excuted : mLastEventTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  force : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7
.end method


# virtual methods
.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "tag"

    .prologue
    .line 5697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5698
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5700
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5704
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 5705
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 5706
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5708
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5710
    return-void

    .line 5706
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5708
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireDVFSLockIntent_MAX(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 5759
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ acquire cpu max limit freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5762
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5763
    return-void
.end method

.method public acquireDVFSLockIntent_MIN(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 5751
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ acquire cpu min limit freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5753
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5754
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5755
    return-void
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "frequency"
    .parameter "callingId"
    .parameter "tag"

    .prologue
    .line 5859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5860
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5862
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5866
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5867
    :try_start_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 5868
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 5869
    .local v3, token:Landroid/os/IBinder;
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5870
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 5871
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 5872
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 5877
    .end local v3           #token:Landroid/os/IBinder;
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5879
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5881
    return-void

    .line 5875
    :cond_0
    :try_start_2
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5877
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5879
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1262
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1263
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_0
    if-eqz p4, :cond_1

    .line 1267
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1269
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1271
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1272
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 1273
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    return-void

    .line 1273
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1275
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 14
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1410
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1411
    const/16 p6, 0x0

    .line 1414
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v10

    .line 1419
    .local v10, index:I
    if-gez v10, :cond_7

    .line 1420
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1421
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_0

    .line 1444
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1
    :goto_0
    return-void

    .line 1429
    :sswitch_0
    const/16 v2, 0xf

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 1448
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 1449
    if-eqz p6, :cond_2

    .line 1450
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1452
    :cond_2
    const/4 v11, 0x1

    .line 1453
    .local v11, newlock:Z
    const/4 v9, 0x0

    .line 1454
    .local v9, diffsource:Z
    const/4 v13, 0x0

    .line 1455
    .local v13, oldsource:Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    .line 1477
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1482
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    .line 1483
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1484
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLock : PROXIMITY_SCREEN_OFF_WAKE_LOCK : mProximityWakeLockCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1487
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1542
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 1545
    invoke-virtual {p0, v1, v13}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1547
    :cond_5
    if-nez v11, :cond_6

    if-eqz v9, :cond_1

    .line 1548
    :cond_6
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 1433
    .end local v9           #diffsource:Z
    .end local v11           #newlock:Z
    .end local v13           #oldsource:Landroid/os/WorkSource;
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto/16 :goto_1

    .line 1436
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto/16 :goto_1

    .line 1457
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_7
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v10}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1458
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v11, 0x0

    .line 1459
    .restart local v11       #newlock:Z
    iget-object v13, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1460
    .restart local v13       #oldsource:Landroid/os/WorkSource;
    if-eqz v13, :cond_9

    .line 1461
    if-nez p6, :cond_8

    .line 1462
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1463
    const/4 v9, 0x1

    .line 1472
    .restart local v9       #diffsource:Z
    :goto_4
    if-eqz v9, :cond_3

    .line 1473
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto/16 :goto_2

    .line 1465
    .end local v9           #diffsource:Z
    :cond_8
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v9

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1467
    .end local v9           #diffsource:Z
    :cond_9
    if-eqz p6, :cond_a

    .line 1468
    const/4 v9, 0x1

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1470
    .end local v9           #diffsource:Z
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1490
    :cond_b
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 1491
    iget v12, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1492
    .local v12, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1496
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_c

    .line 1498
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1517
    .end local v12           #oldWakeLockState:I
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    if-eqz v2, :cond_e

    const/4 v8, 0x1

    .line 1518
    .local v8, bGoOn:Z
    :goto_6
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_f

    const-string v2, "Screen__On : "

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_3

    .line 1515
    .end local v8           #bGoOn:Z
    :cond_d
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_5

    .line 1517
    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .line 1518
    .restart local v8       #bGoOn:Z
    :cond_f
    const-string v2, ""

    goto :goto_7

    .line 1523
    .end local v8           #bGoOn:Z
    :cond_10
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1524
    if-eqz v11, :cond_11

    .line 1525
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1527
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1530
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1534
    :cond_11
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    if-nez v2, :cond_12

    .line 1535
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1538
    :cond_12
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLockLocked : mForceDisableWakeLock : NOT acquired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1421
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 4893
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 4895
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 4896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 4897
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 4898
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4900
    const-string v0, "ctl.stop"

    const-string v1, "powersnd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    monitor-exit v6

    .line 4916
    return-void

    .line 4902
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 9
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 3544
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    const-string v0, "clearUserActivityTimeout"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    .line 3547
    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3548
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 4514
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4515
    new-instance v1, Lcom/android/server/PowerManagerService$18;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$18;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4520
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4524
    :goto_0
    return-void

    .line 4521
    :catch_0
    move-exception v0

    .line 4522
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 1796
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    :goto_0
    return-void

    .line 1802
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1804
    .local v17, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1805
    :try_start_0
    const-string v22, "Power Manager State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsPowered="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPowerState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mScreenOffTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " ms"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPartialCount="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mWakeLockState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mUserState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPowerState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLocks.gather="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1815
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mNextTimeout="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " now="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v17

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "s from now"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mDimScreen="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mStayOnConditions="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPreparingForScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mSkippedScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1821
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mScreenOffReason="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mUserState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastQueue={"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "}"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1825
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastWhy={"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "}"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPokey="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPokeAwakeonSet="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mKeyboardVisible="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mUserActivityAllowed="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mKeylightDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mDimDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mScreenOffDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPreventScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  mScreenBrightnessOverride="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  mButtonBrightnessOverride="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mMaximumScreenOffTimeout="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mButtonOffTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsSipVisible="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsNorthAmericaSalesCode="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v24, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLastScreenOnTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastWakeLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStayOnWhilePluggedInScreenDimLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStayOnWhilePluggedInPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPreventScreenOnPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityWakeLockCount="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximitySensorEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximitySensorActive="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityPendingValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLastProximityEventTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorAdjustSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorPendingValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mHighestLightSensorValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mWaitingForFirstLightSensor="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorPendingDecrease="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorPendingIncrease="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorButtonBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorKeyboardBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1862
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightnessUpperLimit="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightnessLowerLimit="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mUseSoftwareAutoBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mAutoBrightessEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mMaxBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsTablet="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsSecuredLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsDeviceLockTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mDeviceLockTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    const-string v22, "  GLOBALCONFIG_LCD_AMOLED_DISPLAY=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    const-string v22, "  GLOBALCONFIG_LCD_MDNIE_FUNCTION=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    const-string v22, "  GLOBALCONFIG_LCD_SUPPORT_CABC=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const-string v22, "  GLOBALCONFIG_LCD_MSM8655CABC=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    const-string v22, "  GLOBALCONFIG_CAMERA_ENABLE_FACE_SERVICE=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "2000"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mSmartSleepEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mSmartSleepDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    const-string v22, "  GLOBALCONFIG_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mDynamicAutoBrightnessEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mAutoPowerOffTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrAutoBrightnessLevels="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessLevels:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrAutoBrightnessHysteresisLevels="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrAutoBrightnessHysteresisLevels:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrLcdBacklightValues="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrLcdBacklightValues:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1892
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrLowHysteresisPoints="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrLowHysteresisPoints:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrBrightnessValuePoints="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrBrightnessValuePoints:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrHighHysteresisPoints="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrHighHysteresisPoints:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStrMinimumExpressiveBrightnessValues="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/PowerManagerService;->mStrMinimumExpressiveBrightnessValues:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v22, v0

    const-string v24, "mScreenBrightnessAnimator: "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v5

    .line 1901
    .local v5, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1902
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1904
    .local v8, cTime:J
    const-wide/16 v11, 0x0

    .line 1905
    .local v11, eTime:J
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v5, :cond_4

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1907
    .local v21, wl:Lcom/android/server/PowerManagerService$WakeLock;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x3f

    invoke-static/range {v22 .. v22}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v20

    .line 1908
    .local v20, type:Ljava/lang/String;
    const-string v6, ""

    .line 1909
    .local v6, acquireCausesWakeup:Ljava/lang/String;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v22, v0

    const/high16 v24, 0x1000

    and-int v22, v22, v24

    if-eqz v22, :cond_2

    .line 1910
    const-string v6, "ACQUIRE_CAUSES_WAKEUP "

    .line 1912
    :cond_2
    const-string v7, ""

    .line 1913
    .local v7, activated:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1914
    const-string v7, " activated"

    .line 1916
    :cond_3
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    move-wide/from16 v24, v0

    sub-long v11, v8, v24

    .line 1917
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " \'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "\'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (minState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", uid="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", pid="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "activeT="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1922
    .end local v6           #acquireCausesWakeup:Ljava/lang/String;
    .end local v7           #activated:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    .end local v21           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1923
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mForceDisableWakeLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1926
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mPokeLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1928
    .local v19, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    poke lock \'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "\':"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_5

    const-string v22, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_6

    const-string v22, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_7

    const-string v22, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1960
    .end local v5           #N:I
    .end local v8           #cTime:J
    .end local v11           #eTime:J
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 1928
    .restart local v5       #N:I
    .restart local v8       #cTime:J
    .restart local v11       #eTime:J
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_5
    :try_start_1
    const-string v22, ""

    goto :goto_3

    :cond_6
    const-string v22, ""

    goto :goto_4

    :cond_7
    const-string v22, ""

    goto :goto_5

    .line 1937
    .end local v19           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v4

    .line 1940
    .local v4, M:I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mDVFSLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v4, :cond_b

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 1943
    .local v3, DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v20

    .line 1944
    .restart local v20       #type:Ljava/lang/String;
    const-string v10, ""

    .line 1945
    .local v10, currentDVFSLock:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    iget-wide v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    move-wide/from16 v26, v0

    sub-long v13, v24, v26

    .line 1947
    .local v13, elapsedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_a

    .line 1948
    const-string v10, " <--- mCurrentDVFSMinLock"

    .line 1954
    :cond_9
    :goto_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  type : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  freq : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  elapsed time : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  tag : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1950
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_9

    .line 1951
    const-string v10, " <--- mCurrentDVFSMaxLock"

    goto :goto_7

    .line 1958
    .end local v3           #DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    .end local v10           #currentDVFSLock:Ljava/lang/String;
    .end local v13           #elapsedTime:J
    .end local v20           #type:Ljava/lang/String;
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPersistentDVFSLocksInfo=0x"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1960
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method enableMonitorWakelocks()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1286
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++m enableMonitorWakelocks() mWakelockMonitorFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/PowerManagerService;->mWakelockMonitorFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    sget v1, Lcom/android/server/PowerManagerService;->mWakelockMonitorFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 4617
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4620
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 4621
    if-nez p1, :cond_0

    .line 4623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 4625
    :cond_0
    monitor-exit v1

    .line 4626
    return-void

    .line 4625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public forceDisableWakeLock(Z)V
    .locals 3
    .parameter "disabled"

    .prologue
    .line 6045
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APO : forceDisableWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (mForceDisableWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 6048
    if-eqz p1, :cond_1

    .line 6049
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 6050
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-lez v0, :cond_0

    .line 6051
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->nativeReleaseWakeLock(Ljava/lang/String;)V

    .line 6060
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6063
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    if-eqz v0, :cond_2

    .line 6064
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6065
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6071
    :goto_1
    return-void

    .line 6055
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 6056
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-lez v0, :cond_0

    .line 6057
    const/4 v0, 0x1

    const-string v2, "PowerManagerService"

    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireWakeLock(ILjava/lang/String;)V

    goto :goto_0

    .line 6060
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6068
    :cond_2
    const-string v0, "PowerManagerService"

    const-string v1, "APO : forceDisableWakeLock : resetAutoPowerOffTimer()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->resetAutoPowerOffTimer()V

    goto :goto_1
.end method

.method public getCurrentBrightness(Z)F
    .locals 6
    .parameter "ratio"

    .prologue
    .line 3366
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v3

    .line 3367
    const/high16 v1, -0x4080

    .line 3368
    .local v1, retValue:F
    const/high16 v0, -0x4080

    .line 3370
    .local v0, curBrightness:F
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3371
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v2, v2, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    int-to-float v0, v2

    .line 3377
    :goto_0
    if-eqz p1, :cond_1

    .line 3378
    const/high16 v2, 0x437f

    div-float v1, v0, v2

    .line 3384
    :goto_1
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentBrightness : ratio : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  retValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    monitor-exit v3

    return v1

    .line 3374
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v2, v2, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    int-to-float v0, v2

    goto :goto_0

    .line 3381
    :cond_1
    float-to-int v2, v0

    int-to-float v1, v2

    goto :goto_1

    .line 3387
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 4811
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 4813
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4814
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4818
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getProcessName(I)Ljava/lang/String;
    .locals 13
    .parameter "_pid"

    .prologue
    .line 1291
    const-string v8, ""

    .line 1292
    .local v8, processName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->enableMonitorWakelocks()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v9, v8

    .line 1326
    :goto_0
    return-object v9

    .line 1295
    :cond_0
    const/16 v10, 0x1000

    new-array v0, v10, [B

    .line 1297
    .local v0, buffer:[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1300
    .local v4, file:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v6, is:Ljava/io/FileInputStream;
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 1302
    .local v7, len:I
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1303
    if-lez v7, :cond_2

    .line 1304
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 1305
    aget-byte v10, v0, v5

    const/16 v11, 0x21

    if-lt v10, v11, :cond_1

    aget-byte v10, v0, v5

    const/16 v11, 0x7e

    if-le v10, v11, :cond_3

    .line 1306
    :cond_1
    const/4 v10, 0x0

    aput-byte v10, v0, v5

    .line 1307
    move v7, v5

    .line 1312
    .end local v5           #i:I
    :cond_2
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1324
    .end local v8           #processName:Ljava/lang/String;
    .local v9, processName:Ljava/lang/String;
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "++++++mn len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 1326
    .end local v9           #processName:Ljava/lang/String;
    .restart local v8       #processName:Ljava/lang/String;
    goto :goto_0

    .line 1304
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1313
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v7           #len:I
    :catch_0
    move-exception v1

    .line 1314
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1315
    const-string v9, ""

    goto :goto_0

    .line 1316
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1317
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1318
    const-string v9, ""

    goto/16 :goto_0

    .line 1319
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1320
    .local v3, exc:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1321
    const-string v9, ""

    goto/16 :goto_0
.end method

.method getStayOnConditionsLocked()I
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFrequency()[I
    .locals 1

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 4924
    const/16 v0, 0x1f

    .line 4928
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 4929
    or-int/lit8 v0, v0, 0x20

    .line 4932
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 4427
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 4428
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 4436
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleepWithReason : time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4438
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4439
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 4440
    monitor-exit v1

    .line 4441
    return-void

    .line 4440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 5
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x4

    const/4 v3, 0x0

    .line 891
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 892
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 893
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 894
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 895
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 897
    invoke-virtual {p2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 898
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 899
    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 900
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 901
    const-string v0, "1"

    const-string v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 936
    sget-boolean v0, Lcom/android/server/PowerManagerService;->IS_TYPE_LT02:Z

    if-eqz v0, :cond_1

    .line 937
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 938
    new-instance v0, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

    const-string v1, "mDVFSLockIntentSenderThreadInPMS"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderThread:Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

    .line 940
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderThread:Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;->start()V

    .line 942
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderThread:Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

    monitor-enter v1

    .line 943
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 945
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderThread:Lcom/android/server/PowerManagerService$DVFSLockIntentSender;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 946
    :catch_0
    move-exception v0

    goto :goto_0

    .line 950
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 954
    new-instance v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const-string v1, "mScreenBrightnessUpdaterThread"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    .line 956
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->start()V

    .line 958
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v1

    .line 959
    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_2

    .line 961
    :try_start_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 962
    :catch_1
    move-exception v0

    goto :goto_1

    .line 950
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 966
    :cond_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 968
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 969
    new-instance v0, Lcom/android/server/PowerManagerService$4;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 976
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 978
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 979
    :goto_2
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v0, :cond_3

    .line 981
    :try_start_8
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 982
    :catch_2
    move-exception v0

    goto :goto_2

    .line 966
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 986
    :cond_3
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 988
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 989
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 992
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 994
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 995
    return-void

    .line 986
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 994
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method

.method initInThread()V
    .locals 13

    .prologue
    const v11, 0x1070032

    const/4 v12, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 998
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1000
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v10, v3, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1002
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v12, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1004
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1006
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1008
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1012
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "AutoPowerOff Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 1015
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v3, 0x5000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1018
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 1019
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    const/high16 v3, 0x5000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepIntent:Landroid/content/Intent;

    .line 1024
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    .line 1026
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1028
    .local v7, resources:Landroid/content/res/Resources;
    const v1, 0x1110014

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 1031
    const v1, 0x1110013

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 1034
    const v1, 0x10e0024

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 1038
    const v1, 0x1110011

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 1040
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    .line 1041
    const v1, 0x107002b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 1043
    const v1, 0x107002d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 1045
    const v1, 0x107002e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 1047
    const v1, 0x107002f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 1049
    const v1, 0x10e0027

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 1051
    const v1, 0x107002c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 1055
    const v1, 0x1110023

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    .line 1059
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v1, :cond_0

    .line 1060
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dynamic AutoBrightness is Enabled. mDynamicAutoBrightnessEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const v1, 0x10e0025

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 1064
    const v1, 0x10e0026

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    .line 1066
    const v1, 0x1070031

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    .line 1068
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValuesOrg:[I

    .line 1070
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    .line 1072
    const v1, 0x1070033

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    .line 1074
    const v1, 0x1070034

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessValuesOrg:[I

    .line 1076
    const v1, 0x1070034

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    .line 1078
    const v1, 0x1070035

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    .line 1080
    const v1, 0x1070036

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValuesOrg:[I

    .line 1082
    const v1, 0x1070036

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    .line 1084
    const v1, 0x1070030

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    .line 1087
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setDynamicAutoBrightnessSlopeTables()V

    .line 1089
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->printAutoBrightnessTables()V

    .line 1091
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_2

    move v1, v10

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 1094
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1095
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v11, "stay_on_while_plugged_in"

    aput-object v11, v4, v5

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    const-string v11, "dim_screen"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "screen_brightness"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "screen_brightness_mode"

    aput-object v11, v4, v5

    const/4 v5, 0x5

    const-string v11, "window_animation_scale"

    aput-object v11, v4, v5

    const-string v5, "transition_animation_scale"

    aput-object v5, v4, v12

    const/4 v5, 0x7

    const-string v11, "button_key_light"

    aput-object v11, v4, v5

    const/16 v5, 0x8

    const-string v11, "is_secured_lock"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1109
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 1110
    new-instance v9, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 1111
    .local v9, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1122
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1123
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1125
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1126
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1128
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1129
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1133
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1134
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "ResponseAxT9Info"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1140
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PROXIMITY_CP"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1144
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->initSupportedFrequency()V

    .line 1153
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1160
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 1162
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 1163
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 1164
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    monitor-exit v2

    .line 1166
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :cond_2
    move v1, v5

    .line 1091
    goto/16 :goto_0

    .line 1165
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #filter:Landroid/content/IntentFilter;
    .restart local v8       #settingsCursor:Landroid/database/Cursor;
    .restart local v9       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 3474
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3475
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3469
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 2465
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2467
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2470
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 2457
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2460
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 4920
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 4921
    return-void

    .line 4920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1355
    iget v0, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v0, :cond_0

    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1358
    .local v7, origId:J
    if-eqz p2, :cond_1

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    .end local v7           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1368
    .restart local v7       #origId:J
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1374
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1380
    iget v0, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v0, :cond_0

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1383
    .local v7, origId:J
    if-eqz p2, :cond_1

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    .end local v7           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1393
    .restart local v7       #origId:J
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1396
    :catch_0
    move-exception v0

    .line 1399
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public preventAutoPowerOff(IZ)V
    .locals 5
    .parameter "who"
    .parameter "bPrevent"

    .prologue
    .line 3582
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3583
    .local v1, rawCurrentCount:Ljava/lang/Integer;
    const/4 v0, -0x1

    .line 3585
    .local v0, currentCount:I
    if-nez v1, :cond_1

    .line 3586
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APO : first preventAutoPowerOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bPrevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3588
    const/4 v0, 0x0

    .line 3594
    :goto_0
    if-eqz p2, :cond_2

    .line 3595
    add-int/lit8 v0, v0, 0x1

    .line 3605
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->resetAutoPowerOffTimer()V

    .line 3608
    return-void

    .line 3591
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 3598
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 3599
    if-gez v0, :cond_0

    .line 3600
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APO : currentCount < 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public preventScreenOn(Z)V
    .locals 6
    .parameter "prevent"

    .prologue
    .line 2502
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2505
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    if-eqz p1, :cond_0

    .line 2510
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2515
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2516
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2548
    :goto_0
    monitor-exit v2

    .line 2549
    return-void

    .line 2524
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2528
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2533
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2538
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2539
    .local v0, err:I
    if-eqz v0, :cond_1

    .line 2540
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from setScreenStateLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    .end local v0           #err:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 4449
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4452
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4455
    :cond_1
    move-object v0, p1

    .line 4456
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$16;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$16;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 4465
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4468
    monitor-enter v1

    .line 4471
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4472
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4475
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;)V
    .locals 6
    .parameter "lock"

    .prologue
    .line 5782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5784
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5788
    .local v0, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5789
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 5790
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5794
    return-void

    .line 5790
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5792
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public releaseDVFSLockIntent_MAX()V
    .locals 3

    .prologue
    .line 5775
    const-string v1, "PowerManagerService"

    const-string v2, "release cpu max limit"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5778
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5779
    return-void
.end method

.method public releaseDVFSLockIntent_MIN()V
    .locals 3

    .prologue
    .line 5767
    const-string v1, "PowerManagerService"

    const-string v2, "release cpu min limit"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5770
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5771
    return-void
.end method

.method public releasePersistentDVFSLock(I)V
    .locals 8
    .parameter "callingId"

    .prologue
    .line 5884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5886
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5890
    .local v0, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5891
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 5892
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5893
    .local v2, lock:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 5894
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  callingId : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5895
    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 5896
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 5906
    .end local v2           #lock:Landroid/os/IBinder;
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5908
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5910
    return-void

    .line 5899
    .restart local v2       #lock:Landroid/os/IBinder;
    :cond_0
    :try_start_2
    const-string v4, "PowerManagerService"

    const-string v6, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeLock under-locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5906
    .end local v2           #lock:Landroid/os/IBinder;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5908
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5904
    :cond_1
    :try_start_4
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1600
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1605
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1606
    monitor-exit v2

    .line 1607
    return-void

    .line 1606
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAutoPowerOffTimer()V
    .locals 3

    .prologue
    .line 3551
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APO : resetAutoPowerOffTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v0, :cond_0

    .line 3553
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3554
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3555
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3557
    :cond_0
    return-void
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 5012
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5013
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 5014
    return-void

    :cond_0
    move v0, v1

    .line 5013
    goto :goto_0
.end method

.method public setAutoBrightnessAdjustment(F)V
    .locals 6
    .parameter "adj"

    .prologue
    .line 4991
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 4993
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 4994
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v3, :cond_1

    .line 4996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 4999
    .local v0, identity:J
    :try_start_1
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 5000
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 5001
    .local v2, value:I
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 5002
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5005
    .end local v2           #value:I
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5008
    .end local v0           #identity:J
    :cond_1
    monitor-exit v4

    .line 5009
    return-void

    .line 5005
    .restart local v0       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5008
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setAutoBrightnessLimit(II)V
    .locals 4
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 2597
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoBrightnessLimit : lowerLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   upperLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2601
    :try_start_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-eq v1, p2, :cond_1

    .line 2602
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 2603
    iput p2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 2605
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 2606
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2607
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 2609
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 2610
    return-void

    .line 2609
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBacklightBrightness(I)V
    .locals 10
    .parameter "brightness"

    .prologue
    .line 4936
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4939
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4941
    .local v5, uid:I
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBacklightBrightness "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4944
    const-string v6, "PowerManagerService"

    const-string v7, "but, isScreenTurningOffLocked : TRUE , so should be ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    :goto_0
    return-void

    .line 4948
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4949
    const-string v6, "PowerManagerService"

    const-string v7, "but, isScreenOn : false , so should be ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4954
    :cond_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 4955
    :try_start_0
    iget v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4958
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v6, :cond_2

    .line 4959
    sget v6, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v4, p1, v6

    .line 4960
    .local v4, powerSaveModeBrightness:I
    if-lez p1, :cond_2

    .line 4961
    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4962
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBacklightBrightness : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    .end local v4           #powerSaveModeBrightness:I
    :cond_2
    iget v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p1, v6, :cond_3

    .line 4967
    iget p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 4968
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBacklightBrightness : brightness is changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because of temperature"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    :cond_3
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4980
    .local v1, identity:J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4984
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4986
    :goto_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 4987
    monitor-exit v7

    goto/16 :goto_0

    .end local v1           #identity:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4981
    .restart local v1       #identity:J
    :catch_0
    move-exception v0

    .line 4982
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PowerManagerService"

    const-string v8, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4984
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2571
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 2572
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2573
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonBrightnessOverride : mButtonBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2578
    :cond_0
    monitor-exit v1

    .line 2579
    return-void

    .line 2578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 4585
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 4589
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_1

    .line 4590
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 4594
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4595
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 4597
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 4598
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 4599
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4600
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4603
    .end local v6           #value:I
    :cond_0
    const-string v0, "mKeyboardVisible"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 4604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 4607
    :cond_1
    monitor-exit v7

    .line 4608
    return-void

    .line 4607
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMasterBrightnessLimit(II)V
    .locals 4
    .parameter "reserved"
    .parameter "upperLimit"

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : reserved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   upperLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2586
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-gez p2, :cond_0

    .line 2587
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "setMasterBrightnessLimit : invalid upperLimit"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2590
    :cond_0
    :try_start_1
    iput p2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2591
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMasterBrightnessLimit : mMaxBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2593
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2594
    return-void
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 4
    .parameter "timeMs"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 709
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 710
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumScreenOffTimeount : mMaximumScreenOffTimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 713
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 18
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DEVICE_POWER"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v14, "PowerManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPokeLock pokey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    if-nez p2, :cond_0

    .line 1706
    const-string v14, "PowerManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :goto_0
    return-void

    .line 1710
    :cond_0
    and-int/lit8 v14, p1, 0x16

    const/16 v15, 0x16

    if-ne v14, v15, :cond_1

    .line 1711
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1715
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v15

    .line 1716
    if-eqz p1, :cond_5

    .line 1717
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1718
    .local v12, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v10, 0x0

    .line 1719
    .local v10, oldPokey:I
    if-eqz v12, :cond_4

    .line 1720
    iget v10, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1721
    move/from16 v0, p1

    iput v0, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1726
    :goto_1
    and-int/lit8 v11, v10, 0x16

    .line 1727
    .local v11, oldTimeout:I
    and-int/lit8 v8, p1, 0x16

    .line 1728
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_2

    if-eq v11, v8, :cond_2

    .line 1729
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1738
    .end local v8           #newTimeout:I
    .end local v10           #oldPokey:I
    .end local v11           #oldTimeout:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1739
    .restart local v10       #oldPokey:I
    const/4 v5, 0x0

    .line 1740
    .local v5, cumulative:I
    const/4 v4, 0x0

    .line 1741
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1742
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v14

    .line 1743
    iget-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v14, :cond_3

    .line 1744
    const/4 v4, 0x1

    goto :goto_3

    .line 1723
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v12, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1724
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1759
    .end local v10           #oldPokey:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1732
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1733
    .local v13, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v13, :cond_2

    .line 1734
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1747
    .end local v13           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v10       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1748
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1750
    and-int/lit8 v9, v10, 0x16

    .line 1751
    .local v9, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x16

    .line 1753
    .local v7, newCumulativeTimeout:I
    if-eq v9, v7, :cond_7

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v14, v14, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1759
    :cond_7
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 4804
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4805
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 4806
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4807
    monitor-exit v1

    .line 4808
    return-void

    .line 4807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRatioOfAutoBrightness(I)V
    .locals 6
    .parameter "ratioValue"

    .prologue
    .line 3883
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRatioOfAutoBrightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3888
    const-string v2, "PowerManagerService"

    const-string v3, "but, isScreenTurningOffLocked : TRUE , so should be ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    :goto_0
    return-void

    .line 3892
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3893
    const-string v2, "PowerManagerService"

    const-string v3, "but, isScreenOn : false , so should be ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3898
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 3899
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3900
    .local v0, prevDynamicAutoBrightnessRatioValueSetting:I
    iput p1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3901
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRatioOfAutoBrightness : mDynamicAutoBrightnessRatioValueSetting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v0, v2, :cond_2

    .line 3904
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->convertSettingsRatioToWeightedRatio(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    .line 3905
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRatioOfAutoBrightness : mDynamicAutoBrightnessRatio : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3909
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3910
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v1, v2

    .line 3911
    .local v1, value:I
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3912
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3914
    .end local v1           #value:I
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #prevDynamicAutoBrightnessRatioValueSetting:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2556
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 2557
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2558
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightnessOverride : mScreenBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2563
    :cond_0
    monitor-exit v1

    .line 2564
    return-void

    .line 2563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    return-void
.end method

.method public setSystemPowerSaveMode(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 5420
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemPowerSaveMode is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 5422
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 5423
    return-void
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4822
    new-instance v3, Landroid/hardware/SystemSensorManager;

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4823
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 4825
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 4826
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 4830
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    .line 4837
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_1

    .line 4839
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 4846
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 4847
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4848
    .local v0, autoPowerOffIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    .line 4850
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 4851
    :try_start_0
    const-string v3, "PowerManagerService"

    const-string v7, "system ready!"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4852
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 4854
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4858
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 4859
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4863
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4865
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4866
    return-void

    .line 4842
    .end local v0           #autoPowerOffIntent:Landroid/content/Intent;
    .end local v1           #identity:J
    :cond_1
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_0

    .restart local v0       #autoPowerOffIntent:Landroid/content/Intent;
    :cond_2
    move v3, v5

    .line 4854
    goto :goto_1

    .line 4860
    .restart local v1       #identity:J
    :catch_0
    move-exception v3

    .line 4863
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 4865
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 4863
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 4576
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 4577
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4578
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 4580
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 4581
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBlockedUids(IZ)V
    .locals 6
    .parameter "uid"
    .parameter "isBlocked"

    .prologue
    .line 1578
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 1580
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1581
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1582
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-eqz v1, :cond_1

    .line 1583
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    if-eq v2, p1, :cond_0

    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_1

    .line 1587
    :cond_0
    if-eqz p2, :cond_1

    .line 1588
    iget-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    iget v4, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1589
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->isReleasedInternal:Z

    .line 1580
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    monitor-exit v3

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1554
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1555
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1556
    const/4 p2, 0x0

    .line 1558
    :cond_0
    if-eqz p2, :cond_1

    .line 1559
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1561
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1562
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1563
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1564
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1571
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1566
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1567
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1568
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1569
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1570
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1571
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    return-void

    .line 1568
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 3519
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3521
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3522
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_0
    :goto_0
    return-void

    .line 3528
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    const/4 v7, 0x0

    .line 3532
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3533
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 3536
    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3537
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    .line 3513
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    const-string v0, "userActivityWithForce"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3515
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3516
    return-void
.end method
