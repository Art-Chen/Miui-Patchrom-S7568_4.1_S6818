.class Lcom/android/internal/policy/impl/PenDetachmentAlert;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"


# static fields
.field static final DEBUG:Z = true

.field private static final INTERVAL_SECONDS:I = 0x1e

.field private static final LOSS_PREVENTION_ALERT_CHANGED:Ljava/lang/String; = "com.android.settings.LossPeventionAlertChanged"

.field private static final MSG_ALERT_TIMER_START:I = 0x65

.field private static final PEN_MISSING_ALERT_DIALOG_DISMISSED:Ljava/lang/String; = "com.android.PenMissingAlertDialog.DISMISSED"

.field private static final SAMSUNG_PEN_INSERT_ACTION:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final TAG:Ljava/lang/String; = "PenDetachmentAlert"

.field private static final TOTAL_SECONDS:I = 0x1e


# instance fields
.field private currentStepCount:I

.field private mAlertCount:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDialogShowed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsScreenOn:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mListenerRegistered:Z

.field private mLooper:Landroid/os/Looper;

.field mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

.field private mPenInserted:Z

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mStepCount:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private previousStepCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 4
    .parameter "context"
    .parameter "windowManagerFuncs"
    .parameter "keyguardMediator"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$5;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    iput-object p2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.PenMissingAlertDialog.DISMISSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->handleAlertTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PenDetachmentAlert;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->showDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V

    return-void
.end method

.method private dismissTimer()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z

    iput v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    const-string v0, "PenDetachmentAlert"

    const-string v1, "dismiss alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;

    const-string v0, "PenDetachmentAlert"

    const-string v1, "quit looper in dismissTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "PenDetachmentAlert"

    const-string v1, "release PARTIAL_WAKE_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private handleAlertTimer()V
    .locals 3

    .prologue
    const-string v1, "PenDetachmentAlert"

    const-string v2, "handleAlertTimer to play sound again for each 30 seconds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "PenDetachmentAlert_Timer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->setTimer()V

    return-void
.end method

.method private isFactoryMode()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, isFactoryMode:Z
    const/4 v3, 0x0

    .local v3, valueShouldShutDown:I
    const/4 v1, 0x0

    .local v1, imeiBlocked:Ljava/lang/String;
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    const-string v4, "999999999999999"

    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PenDetachmentAlert"

    const-string v5, "Not factory mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v1, "OFF"

    const-string v4, "PenDetachmentAlert"

    const-string v5, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "PenDetachmentAlert"

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    const-string v0, "PenDetachmentAlert"

    const-string v1, "stop alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->setTimer()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->dismissTimer()V

    goto :goto_0
.end method

.method private setTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7530

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    const-string v0, "PenDetachmentAlert"

    const-string v1, "start alert timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;JJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->show()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->playSoundOrVibration()V

    :cond_2
    const-string v1, "PenDetachmentAlert"

    const-string v2, "Pen detachment alert dialog displayed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPenInserted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method public playSoundOrVibration()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-string v0, "/system/media/audio/ui/Pen_det_alert.ogg"

    .local v0, DETACH_ALERT_SOUND:Ljava/lang/String;
    const/16 v7, 0x38

    new-array v3, v7, [B

    fill-array-data v3, :array_0

    .local v3, ivt:[B
    const-string v7, "/system/media/audio/ui/Pen_det_alert.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .local v6, soundUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .local v5, sfx:Landroid/media/Ringtone;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .local v4, ringerMode:I
    :goto_0
    const/4 v7, 0x2

    if-ne v7, v4, :cond_4

    if-eqz v5, :cond_2

    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    :cond_0
    const-string v7, "PenDetachmentAlert"

    const-string v8, "playSoundOrVibration() : RINGER_MODE_NORMAL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    if-nez v7, :cond_3

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    :goto_2
    return-void

    .end local v4           #ringerMode:I
    :cond_1
    const/4 v4, 0x2

    .restart local v4       #ringerMode:I
    goto :goto_0

    :cond_2
    const-string v7, "PenDetachmentAlert"

    const-string v8, "playSoundOrVibration() : There are no ringtones"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, exception:Ljava/lang/Exception;
    const-string v7, "PenDetachmentAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSoundOrVibration() : Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #exception:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V

    goto :goto_2

    :cond_4
    if-eq v9, v4, :cond_5

    if-nez v4, :cond_6

    :cond_5
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;

    invoke-direct {v8, p0, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;[B)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    const-string v7, "PenDetachmentAlert"

    const-string v8, "playSoundOrVibration() : RINGER_MODE_VIBRATE or RINGER_MODE_SILENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    if-nez v7, :cond_7

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I

    :goto_3
    const-string v7, "PenDetachmentAlert"

    const-string v8, "playSoundOrVibration() : unknown mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x3t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x19t
        0x0t
        0x21t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x64t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0x72t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0xd6t
        0xfft
        0x20t
        0x5t
        0x0t
        0x0t
        0x19t
        0x0t
        0x0t
        0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x61t
        0x0t
    .end array-data
.end method

.method public resetPedometer()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->initializeSContextService(I)V

    :cond_1
    return-void
.end method

.method public setPenInserted(Z)V
    .locals 0
    .parameter "penInserted"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return-void
.end method

.method public startPedometer()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PenDetachmentAlert"

    const-string v1, "do not start pedometer for pen detachment alert : factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "PenDetachmentAlert"

    const-string v1, "enter startPedometer to registered SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    const-string v0, "PenDetachmentAlert"

    const-string v1, "registered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPedometer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    const-string v0, "PenDetachmentAlert"

    const-string v1, "enter stopPedometer to unregistered SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    iput v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    const-string v0, "PenDetachmentAlert"

    const-string v1, "unregistered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
