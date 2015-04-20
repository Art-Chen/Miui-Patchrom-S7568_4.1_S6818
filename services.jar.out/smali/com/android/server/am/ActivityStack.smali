.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final localLOGV:Z


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field mIsIdleNow:Z

.field final mIsMultiWindowEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field mSplitZoneInfo:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 272
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 269
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 274
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    .line 275
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    .line 276
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 283
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 288
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 295
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 307
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 309
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 314
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 319
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 321
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 322
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 348
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 453
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 454
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 455
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 456
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 458
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 459
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 460
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 462
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    .line 464
    return-void
.end method

.method private applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 9
    .parameter "target"
    .parameter "newTask"

    .prologue
    const/high16 v8, 0x40

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1655
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v4, v8

    if-nez v4, :cond_1

    .line 1656
    const-string v4, "android"

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1657
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_4

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    if-nez p2, :cond_4

    .line 1663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1664
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v7, :cond_2

    .line 1665
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v4, v5, :cond_3

    .line 1663
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1668
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v4, v8

    if-nez v4, :cond_4

    .line 1669
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v7, -0x400001

    and-int/2addr v4, v7

    iput v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1677
    .end local v0           #i:I
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_2
    if-ltz v0, :cond_8

    .line 1678
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1679
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v7, :cond_6

    if-eq v2, p1, :cond_6

    .line 1681
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v4, v5, :cond_7

    .line 1677
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1685
    :cond_7
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v7, 0x4c2000

    and-int/2addr v4, v7

    iput v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1686
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v8, -0x4c2001

    and-int/2addr v7, v8

    or-int/2addr v4, v7

    iput v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1692
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_8
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v4

    const/high16 v7, 0x200

    if-ne v4, v7, :cond_0

    .line 1693
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 1694
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->arrange:I

    and-int/lit8 v4, v4, 0x3c

    if-eqz v4, :cond_9

    move v3, v5

    .line 1695
    .local v3, splitedModes:Z
    :goto_3
    if-eqz v3, :cond_0

    .line 1696
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x80

    and-int/2addr v4, v7

    if-nez v4, :cond_0

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    if-nez v4, :cond_0

    .line 1698
    invoke-direct {p0, v6, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, p1, v4, v6}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .end local v3           #splitedModes:Z
    :cond_9
    move v3, v6

    .line 1694
    goto :goto_3
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 10
    .parameter "sr"
    .parameter "intent"

    .prologue
    .line 6580
    const-string v6, ""

    .line 6581
    .local v6, simNum:Ljava/lang/String;
    const-string v3, ""

    .line 6583
    .local v3, imsi:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 6585
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_1

    .line 6586
    const/4 v0, 0x0

    .line 6620
    :cond_0
    :goto_0
    return v0

    .line 6589
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 6591
    if-eqz v3, :cond_2

    .line 6592
    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6595
    :cond_2
    const/4 v0, 0x0

    .line 6597
    .local v0, checkFlag:Z
    const-string v8, "46001"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6598
    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.android.wo3g"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "com.infinit.wostore.ui"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "com.sinovatech.unicom.ui"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "com.unicom116114"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "com.neusoft.td.android.wo116114"

    aput-object v9, v5, v8

    .line 6599
    .local v5, packages:[Ljava/lang/String;
    const/4 v8, 0x5

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.android.wo3g.wo3g"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "com.unicom116114.Unicom116114"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v9, v1, v8

    .line 6601
    .local v1, classes:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 6604
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6605
    .local v4, in:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 6606
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 6607
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6611
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 6612
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v1

    if-ge v2, v8, :cond_0

    .line 6613
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6614
    const/4 v0, 0x1

    .line 6615
    goto/16 :goto_0

    .line 6612
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkSplitState()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 6526
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6527
    .local v0, N:I
    const/4 v2, 0x0

    .line 6529
    .local v2, obscuredMask:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 6530
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 6532
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v5, :cond_1

    .line 6545
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    return v4

    .line 6536
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x20

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 6538
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    .line 6539
    const/16 v5, 0xf

    if-ne v2, v5, :cond_2

    .line 6540
    const/4 v4, 0x1

    goto :goto_1

    .line 6529
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private final completePauseLocked()V
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1461
    return-void
.end method

.method private final completePauseLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 13
    .parameter "prev"

    .prologue
    .line 1466
    if-eqz p1, :cond_0

    .line 1467
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_7

    .line 1470
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_6

    .line 1471
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1517
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_f

    .line 1518
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1525
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v7

    if-nez v7, :cond_10

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1536
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 1537
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1540
    :cond_2
    if-eqz p1, :cond_4

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_4

    iget-wide v7, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1542
    const-wide/16 v1, 0x0

    .line 1543
    .local v1, diff:J
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v8

    .line 1544
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v9}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v9

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v9, v11

    .line 1546
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_4

    .line 1548
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1549
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1550
    :try_start_1
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1553
    .local v4, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_3

    .line 1554
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1556
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1559
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v4           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    if-eqz p1, :cond_5

    .line 1560
    const-wide/16 v7, 0x0

    iput-wide v7, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1562
    :cond_5
    return-void

    .line 1473
    :cond_6
    const/4 v7, 0x2

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    goto :goto_0

    .line 1476
    :cond_7
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_e

    .line 1478
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v7, :cond_8

    .line 1479
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1480
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1484
    :cond_8
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v7, :cond_9

    .line 1491
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "pause-config"

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1493
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 1496
    .local v5, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    .line 1497
    .local v3, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v7, :cond_a

    invoke-virtual {v3, v5, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const/4 v6, 0x1

    .line 1499
    .local v6, scheduleIdle:Z
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_b

    if-eqz v6, :cond_d

    .line 1507
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_0

    .line 1497
    .end local v6           #scheduleIdle:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 1509
    .restart local v6       #scheduleIdle:Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1514
    .end local v3           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6           #scheduleIdle:Z
    :cond_e
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1520
    :cond_f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_1

    .line 1528
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1529
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1532
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 1546
    .restart local v1       #diff:J
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1556
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "next"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1570
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1571
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1572
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1575
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1576
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1577
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1589
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_0

    .line 1590
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1593
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearThumbnail()V

    .line 1594
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_1

    .line 1596
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v1, :cond_2

    .line 1599
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    .line 1600
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1606
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1607
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1608
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1609
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1614
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 1615
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1617
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :goto_1
    return-void

    .line 1602
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 1617
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1619
    :cond_3
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_1
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 3207
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3208
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 3209
    add-int/lit8 v1, v1, -0x1

    .line 3210
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3211
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 3214
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 3222
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 3217
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 3218
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 765
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 766
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 767
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    .line 771
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 772
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 773
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 774
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 775
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_1

    .line 784
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v3

    .line 772
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 784
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 719
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 720
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 725
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 726
    .local v5, userId:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 727
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 728
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 729
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v2, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v5, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 731
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 735
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 736
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 756
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return-object v4

    .line 740
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 746
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 727
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 756
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 5257
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 5258
    .local v0, index:I
    if-gez v0, :cond_0

    .line 5259
    const/4 v1, 0x0

    .line 5262
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5270
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_4

    .line 5271
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5272
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5273
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_3

    .line 5280
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 5287
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5288
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 5320
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .line 5282
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 5293
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5294
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5295
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5296
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_5

    .line 5297
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5299
    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5301
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5303
    if-eqz p3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_8

    .line 5308
    :cond_6
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v4, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 5309
    .local v0, activityRemoved:Z
    if-eqz v0, :cond_7

    .line 5310
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5312
    :cond_7
    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 5317
    .end local v0           #activityRemoved:Z
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5318
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 5975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5976
    return-void
.end method

.method private getFrontResumedActivities(ZZ)Ljava/util/ArrayList;
    .locals 13
    .parameter "includePinup"
    .parameter "onlyResumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 4576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4577
    .local v2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    monitor-enter p0

    .line 4578
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4579
    .local v0, N:I
    const/4 v1, -0x1

    .line 4580
    .local v1, currentTaskId:I
    const/4 v4, 0x0

    .line 4581
    .local v4, isTopFloating:Z
    const/4 v5, 0x0

    .line 4582
    .local v5, lastSkipped:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_8

    .line 4583
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4584
    .local v8, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v1, v9, :cond_1

    .line 4585
    if-eqz v5, :cond_0

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, v11, :cond_0

    .line 4586
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4587
    const/4 v5, 0x0

    .line 4590
    :cond_0
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_2

    .line 4582
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4593
    :cond_2
    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 4594
    .local v6, mode:I
    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    .line 4596
    .local v7, option:I
    iget v11, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-eqz v4, :cond_3

    move v9, v10

    :goto_2
    invoke-static {v11, v9, p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isArrangeMode(IZZ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4597
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v9, :cond_6

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    const/high16 v11, 0x4

    and-int/2addr v9, v11

    if-nez v9, :cond_6

    .line 4598
    const/4 v4, 0x1

    .line 4599
    move-object v5, v8

    .line 4600
    goto :goto_1

    .line 4596
    :cond_3
    if-eqz p2, :cond_5

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v12, :cond_4

    move v9, v10

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move v9, v10

    goto :goto_2

    .line 4602
    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4603
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4605
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 4608
    .end local v6           #mode:I
    .end local v7           #option:I
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :cond_8
    monitor-exit p0

    .line 4609
    return-object v2

    .line 4608
    .end local v0           #N:I
    .end local v1           #currentTaskId:I
    .end local v3           #i:I
    .end local v4           #isTopFloating:Z
    .end local v5           #lastSkipped:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "record"
    .parameter "zoneInfo"

    .prologue
    const/4 v4, 0x0

    .line 4613
    monitor-enter p0

    .line 4614
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4615
    .local v3, topRecord:Lcom/android/server/am/ActivityRecord;
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x40

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 4616
    monitor-exit p0

    move-object v2, v4

    .line 4629
    :goto_0
    return-object v2

    .line 4619
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4620
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 4621
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4622
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_1

    .line 4623
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, p2, :cond_1

    .line 4624
    monitor-exit p0

    goto :goto_0

    .line 4628
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    .end local v3           #topRecord:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4620
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v3       #topRecord:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4628
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 4629
    goto :goto_0
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6228
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6229
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nfc://secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6230
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "nfc://secure:it should not be shown "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6243
    :cond_0
    :goto_0
    return-void

    .line 6237
    :cond_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "where"

    .prologue
    .line 3230
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3231
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3232
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3239
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3240
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3241
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3242
    return-object v0
.end method

.method private moveMwPinupToFront()V
    .locals 5

    .prologue
    .line 5654
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 5655
    .local v3, total:I
    move v0, v3

    .line 5656
    .local v0, cnt:I
    :goto_0
    if-ltz v0, :cond_1

    .line 5657
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5658
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 5659
    .local v1, option:I
    const/high16 v4, 0x80

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    const/high16 v4, 0x10

    and-int/2addr v4, v1

    if-nez v4, :cond_0

    .line 5661
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5662
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5663
    add-int/lit8 v3, v3, -0x1

    .line 5665
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5666
    goto :goto_0

    .line 5667
    .end local v1           #option:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private moveTaskToFrontLocked(I)V
    .locals 6
    .parameter "taskId"

    .prologue
    .line 4661
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4662
    .local v3, movedAppTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4663
    .local v2, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4664
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4665
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4666
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p1, :cond_0

    .line 4667
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4668
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4664
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4671
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4672
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4673
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 4674
    return-void
.end method

.method private needsPinupActivtiesFoceHidden()Z
    .locals 12

    .prologue
    const/high16 v11, 0x100

    const/high16 v10, 0x48

    const/4 v7, 0x0

    .line 494
    const/4 v5, 0x0

    .line 495
    .local v5, pinup:Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 496
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 497
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 498
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getMainWindowAttributes(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 499
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v8, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v4

    .line 500
    .local v4, options:I
    iget v8, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    .line 501
    .local v3, mode:I
    const/high16 v8, 0x80

    and-int/2addr v8, v4

    if-eqz v8, :cond_1

    .line 502
    const/4 v5, 0x1

    .line 496
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 505
    :cond_1
    if-eqz v5, :cond_3

    if-ne v3, v11, :cond_3

    if-eqz v2, :cond_3

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_3

    .line 514
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #mode:I
    .end local v4           #options:I
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    return v7

    .line 509
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #mode:I
    .restart local v4       #options:I
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v5, :cond_0

    iget-boolean v8, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_0

    if-ne v3, v11, :cond_0

    if-eqz v2, :cond_0

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_0

    .line 511
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    .locals 6
    .parameter "r"
    .parameter "windowMode"
    .parameter "windowInfoChanged"
    .parameter "allInTask"

    .prologue
    .line 6551
    if-eqz p4, :cond_1

    .line 6552
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6553
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 6554
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6555
    .local v1, cr:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_0

    .line 6556
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 6558
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v5, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-interface {v3, v4, v5, p3}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6553
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6565
    .end local v0           #N:I
    .end local v1           #cr:Lcom/android/server/am/ActivityRecord;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    .line 6567
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-interface {v3, v4, v5, p3}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6572
    :cond_2
    :goto_2
    return-void

    .line 6568
    :catch_0
    move-exception v3

    goto :goto_2

    .line 6559
    .restart local v0       #N:I
    .restart local v1       #cr:Lcom/android/server/am/ActivityRecord;
    .restart local v2       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .locals 6
    .parameter "taskId"
    .parameter "i"

    .prologue
    .line 3154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3155
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3156
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 3169
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 3160
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 3161
    add-int/lit8 p2, p2, 0x1

    .line 3162
    goto :goto_0

    .line 3164
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3166
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3087
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3090
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 3091
    add-int/lit8 v2, v2, -0x1

    .line 3092
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3093
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 3094
    add-int/lit8 v2, v2, 0x1

    .line 3100
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_2

    .line 3101
    add-int/lit8 v2, v2, -0x1

    .line 3102
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3103
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 3106
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_3

    .line 3146
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-object v4

    .line 3109
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3111
    move-object v6, v1

    .line 3112
    .local v6, ret:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 3113
    add-int/lit8 v2, v2, 0x1

    .line 3114
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3115
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_6

    .line 3130
    :cond_5
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    .line 3132
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 3133
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v7

    .line 3134
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 3135
    const-string v10, "clear"

    move-object v5, p0

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 3118
    .end local v7           #index:I
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 3121
    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3123
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    move-object v4, v6

    .line 3142
    goto :goto_0
.end method

.method private final performClearTaskLocked(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 3175
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3178
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 3179
    add-int/lit8 v0, v0, -0x1

    .line 3180
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3181
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 3182
    add-int/lit8 v0, v0, 0x1

    .line 3188
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_2

    .line 3189
    add-int/lit8 v0, v0, -0x1

    .line 3190
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3191
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 3194
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1

    .line 3196
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 3200
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 9
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 6371
    const/4 v2, 0x0

    .line 6372
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 6373
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 6374
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6375
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6380
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6384
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6390
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6391
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_1

    move v5, v7

    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6400
    :goto_1
    if-eqz p3, :cond_4

    .line 6401
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6402
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6403
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_2

    .line 6404
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6406
    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6412
    :goto_2
    return v7

    .line 6380
    :cond_3
    const/16 v0, 0x7544

    goto :goto_0

    .line 6408
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6409
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 6396
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "list"
    .parameter "app"

    .prologue
    .line 5599
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5603
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 5604
    add-int/lit8 v0, v0, -0x1

    .line 5605
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5608
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 5610
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5611
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 5614
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 5380
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5381
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5382
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5383
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5384
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5385
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 26
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 2768
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/16 v18, 0x1

    .line 2778
    .local v18, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 2783
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 2784
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 2785
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 2786
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 2787
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 2788
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, i:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_3

    .line 2789
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v12, v2

    .line 2791
    .local v12, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v12, :cond_2

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2

    .line 2788
    :goto_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 2768
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 2789
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 2795
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v12, :cond_4

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_4

    .line 3071
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-object p1

    .line 2798
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-nez v22, :cond_5

    .line 2799
    move-object/from16 v22, v12

    .line 2800
    move/from16 v23, v19

    .line 2804
    const/16 v21, -0x1

    .line 2805
    goto :goto_3

    .line 2808
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 2810
    .local v17, flags:I
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 2812
    .local v16, finishOnTaskLaunch:Z
    :goto_4
    and-int/lit8 v2, v17, 0x40

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    .line 2815
    .local v11, allowTaskReparenting:Z
    :goto_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1f

    .line 2821
    if-gez v25, :cond_6

    .line 2822
    move/from16 v25, v23

    .line 2824
    :cond_6
    if-eqz v12, :cond_1e

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1e

    .line 2825
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 2828
    .local v13, clearWhenTaskReset:Z
    :goto_6
    if-nez v16, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b

    .line 2835
    if-gez v21, :cond_7

    .line 2836
    move/from16 v21, v23

    .line 3067
    .end local v13           #clearWhenTaskReset:Z
    :cond_7
    :goto_7
    move-object/from16 v22, v12

    .line 3068
    move/from16 v23, v19

    goto :goto_3

    .line 2810
    .end local v11           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 2812
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 2825
    .restart local v11       #allowTaskReparenting:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 2838
    .restart local v13       #clearWhenTaskReset:Z
    :cond_b
    if-nez v16, :cond_13

    if-nez v13, :cond_13

    if-eqz v11, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2848
    .local v3, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2853
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2867
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2868
    if-gez v21, :cond_c

    .line 2869
    move/from16 v21, v23

    .line 2871
    :cond_c
    const/4 v15, 0x0

    .line 2872
    .local v15, dstPos:I
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2873
    .local v14, curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    move/from16 v4, v23

    .local v4, srcPos:I
    :goto_9
    move/from16 v0, v21

    if-gt v4, v0, :cond_10

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2875
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_f

    .line 2873
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2857
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_e

    .line 2859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2861
    :cond_e
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2863
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_8

    .line 2880
    .restart local v4       #srcPos:I
    .restart local v14       #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .restart local v15       #dstPos:I
    :cond_f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v14, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2881
    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v15, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2892
    add-int/lit8 v15, v15, 0x1

    .line 2896
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2898
    :cond_10
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 2899
    move-object/from16 p1, v12

    .line 2901
    :cond_11
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2902
    const/16 v25, -0x1

    .line 2904
    :cond_12
    const/16 v21, -0x1

    .line 2905
    goto/16 :goto_7

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_13
    if-nez v18, :cond_14

    if-nez v16, :cond_14

    if-eqz v13, :cond_1d

    .line 2911
    :cond_14
    if-eqz v13, :cond_18

    .line 2915
    add-int/lit8 v21, v23, 0x1

    .line 2918
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_15

    .line 2919
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 2921
    :cond_15
    add-int/lit8 v21, v21, -0x1

    .line 2925
    :cond_16
    :goto_c
    const/4 v3, 0x0

    .line 2926
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_d
    move/from16 v0, v21

    if-gt v4, v0, :cond_1a

    .line 2927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2928
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 2926
    :cond_17
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2922
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_18
    if-gez v21, :cond_16

    .line 2923
    move/from16 v21, v23

    goto :goto_c

    .line 2931
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v4       #srcPos:I
    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2933
    add-int/lit8 v21, v21, -0x1

    .line 2934
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2937
    :cond_1a
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 2938
    move-object/from16 p1, v12

    .line 2940
    :cond_1b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 2941
    const/16 v25, -0x1

    .line 2943
    :cond_1c
    const/16 v21, -0x1

    .line 2944
    goto/16 :goto_7

    .line 2948
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2953
    .end local v13           #clearWhenTaskReset:Z
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2956
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_21

    if-eqz v12, :cond_20

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_21

    .line 2964
    :cond_20
    if-gez v21, :cond_7

    .line 2965
    move/from16 v21, v23

    goto/16 :goto_7

    .line 2968
    :cond_21
    if-ltz v25, :cond_2e

    if-eqz v11, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2982
    if-nez v18, :cond_22

    if-eqz v16, :cond_27

    .line 2983
    :cond_22
    if-gez v21, :cond_23

    .line 2984
    move/from16 v21, v23

    .line 2986
    :cond_23
    const/4 v3, 0x0

    .line 2989
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_f
    move/from16 v0, v21

    if-gt v4, v0, :cond_26

    .line 2990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2991
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_25

    .line 2989
    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2994
    :cond_25
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2996
    add-int/lit8 v25, v25, -0x1

    .line 2997
    add-int/lit8 v20, v20, -0x1

    .line 2998
    add-int/lit8 v21, v21, -0x1

    .line 2999
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 3002
    :cond_26
    const/16 v21, -0x1

    .line 3003
    goto/16 :goto_7

    .line 3004
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_27
    if-gez v21, :cond_28

    .line 3005
    move/from16 v21, v23

    .line 3009
    :cond_28
    move/from16 v4, v21

    .restart local v4       #srcPos:I
    :goto_11
    move/from16 v0, v23

    if-lt v4, v0, :cond_2b

    .line 3010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3011
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_29

    .line 3009
    :goto_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 3014
    :cond_29
    if-gez v20, :cond_2a

    .line 3015
    move/from16 v20, v25

    .line 3016
    move-object/from16 p1, v3

    .line 3026
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3027
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_12

    .line 3018
    :cond_2a
    add-int/lit8 v20, v20, -0x1

    goto :goto_13

    .line 3038
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2b
    const/16 v21, -0x1

    .line 3044
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 3045
    add-int/lit8 v7, v20, -0x1

    .local v7, j:I
    :goto_14
    if-ltz v7, :cond_7

    .line 3046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3047
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2d

    .line 3045
    :cond_2c
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 3050
    :cond_2d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3051
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3053
    add-int/lit8 v25, v25, -0x1

    .line 3054
    add-int/lit8 v20, v20, -0x1

    goto :goto_15

    .line 3061
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v7           #j:I
    :cond_2e
    if-eqz v12, :cond_7

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_7

    .line 3064
    const/16 v21, -0x1

    goto/16 :goto_7
.end method

.method private setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V
    .locals 6
    .parameter "task"
    .parameter "windowMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1634
    .local p3, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_0

    .line 1635
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZoneForAllActivitiesInTaskLocked task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", windowMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1638
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1639
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1640
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_1

    .line 1641
    invoke-static {p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1638
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1645
    :cond_2
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {p2, v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->setWindowMode(II)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1646
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    .line 1647
    if-eqz p3, :cond_1

    .line 1648
    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p3, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1652
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method private shouldHideActivity(ZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .parameter "behindFullscreen"
    .parameter "obscuredMask"
    .parameter "currentTaskId"
    .parameter "r"
    .parameter "home"

    .prologue
    .line 1705
    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p3, v5, :cond_0

    .line 1706
    const/4 v5, 0x1

    .line 1739
    :goto_0
    return v5

    .line 1708
    :cond_0
    iget v5, p4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    .line 1709
    .local v2, options:I
    const/high16 v5, 0x80

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    .line 1710
    const/4 v5, 0x0

    goto :goto_0

    .line 1713
    :cond_1
    if-eq p4, p5, :cond_2

    if-eqz p5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v6

    if-le v5, v6, :cond_2

    iget-boolean v5, p4, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_2

    .line 1716
    const/4 v5, 0x0

    goto :goto_0

    .line 1717
    :cond_2
    if-eqz p5, :cond_6

    if-ne p4, p5, :cond_6

    .line 1718
    const/4 v4, 0x0

    .line 1719
    .local v4, tempObscuredMask:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1720
    .local v3, rd:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v6, :cond_5

    .line 1725
    .end local v3           #rd:Lcom/android/server/am/ActivityRecord;
    :cond_4
    or-int v5, v4, p2

    const/16 v6, 0xf

    if-ne v5, v6, :cond_6

    .line 1726
    const/4 v5, 0x1

    goto :goto_0

    .line 1721
    .restart local v3       #rd:Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_3

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_3

    .line 1722
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    goto :goto_1

    .line 1729
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #rd:Lcom/android/server/am/ActivityRecord;
    .end local v4           #tempObscuredMask:I
    :cond_6
    if-eqz p1, :cond_7

    const/high16 v5, 0x80

    and-int/2addr v5, v2

    if-nez v5, :cond_7

    .line 1730
    const/4 v5, 0x1

    goto :goto_0

    .line 1733
    :cond_7
    and-int/lit8 v0, v2, 0xf

    .line 1734
    .local v0, currentZone:I
    if-eqz v0, :cond_8

    and-int v5, v0, p2

    if-ne v5, v0, :cond_8

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p3, v5, :cond_8

    .line 1736
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1739
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 27
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"
    .parameter "keepCurTransition"
    .parameter "options"

    .prologue
    .line 2534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2536
    .local v16, NH:I
    const/4 v4, -0x1

    .line 2538
    .local v4, addPos:I
    if-nez p2, :cond_10

    .line 2540
    const/16 v25, 0x1

    .line 2541
    .local v25, startIt:Z
    add-int/lit8 v18, v16, -0x1

    .local v18, i:I
    :goto_0
    if-ltz v18, :cond_5

    .line 2542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    .line 2543
    .local v22, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 2541
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 2546
    :cond_1
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_4

    .line 2550
    add-int/lit8 v4, v18, 0x1

    .line 2551
    if-nez v25, :cond_5

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2559
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2564
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 2572
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2574
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_3

    .line 2575
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2734
    .end local v18           #i:I
    .end local v22           #p:Lcom/android/server/am/ActivityRecord;
    .end local v25           #startIt:Z
    :cond_3
    :goto_2
    return-void

    .line 2583
    .restart local v18       #i:I
    .restart local v22       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #startIt:Z
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    .line 2584
    .local v19, mode:I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x200

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 2585
    const/16 v25, 0x0

    goto :goto_1

    .line 2591
    .end local v19           #mode:I
    .end local v22           #p:Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_6

    .line 2592
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2623
    .end local v18           #i:I
    .end local v25           #startIt:Z
    :cond_6
    :goto_3
    if-gez v4, :cond_7

    .line 2624
    move/from16 v4, v16

    .line 2630
    :cond_7
    move/from16 v0, v16

    if-ge v4, v0, :cond_8

    .line 2631
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2641
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2642
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2643
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2644
    if-lez v16, :cond_18

    .line 2648
    move/from16 v15, p2

    .line 2649
    .local v15, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    .line 2650
    .local v24, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v24, :cond_9

    .line 2651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v24, Lcom/android/server/am/ProcessRecord;

    .line 2653
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_b

    .line 2654
    :cond_a
    const/4 v15, 0x1

    .line 2658
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_13

    .line 2659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2674
    const/16 v17, 0x1

    .line 2675
    .local v17, doShow:Z
    if-eqz p2, :cond_c

    .line 2681
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_c

    .line 2683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2684
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_15

    const/16 v17, 0x1

    .line 2687
    :cond_c
    :goto_5
    if-eqz v17, :cond_e

    .line 2689
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x100

    if-ne v3, v5, :cond_e

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    .line 2696
    .local v23, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_d

    .line 2699
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_16

    const/16 v23, 0x0

    .line 2703
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v23, :cond_17

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_7
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 2722
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_f

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 2731
    :cond_f
    if-eqz p3, :cond_3

    .line 2732
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 2598
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_6

    .line 2599
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v20

    .line 2600
    .local v20, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2602
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x200

    if-ne v3, v5, :cond_12

    .line 2603
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v26

    .line 2604
    .local v26, winInfo:Landroid/os/Bundle;
    if-eqz v26, :cond_6

    .line 2605
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v21

    .line 2606
    .local v21, option:I
    const/high16 v3, 0x80

    and-int v3, v3, v21

    if-eqz v3, :cond_11

    .line 2607
    const-string v3, "android.intent.extra.WINDOW_LAST_PINUP"

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 2608
    :cond_11
    const-string v3, "android.intent.extra.WINDOW_LAST_PINUP"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    if-eqz v3, :cond_6

    .line 2610
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x80

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 2611
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, -0x10

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_3

    .line 2615
    .end local v21           #option:I
    .end local v26           #winInfo:Landroid/os/Bundle;
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_3

    .line 2663
    .end local v20           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v15       #showStartingIcon:Z
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_14

    const/16 v3, 0x1008

    :goto_9
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2663
    :cond_14
    const/16 v3, 0x1006

    goto :goto_9

    .line 2684
    .restart local v17       #doShow:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2701
    .restart local v23       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_16
    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_d

    const/16 v23, 0x0

    goto/16 :goto_6

    .line 2703
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 2715
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2718
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8
.end method

.method private final startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .parameter "prev"
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v7, 0x68

    const/4 v6, 0x0

    .line 1207
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_2

    .line 1208
    if-nez p1, :cond_0

    .line 1209
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1210
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause <null>"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1332
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1216
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for this activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", all pending activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    if-nez p1, :cond_3

    .line 1229
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1230
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1220
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 1221
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1222
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1236
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1238
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_9

    .line 1239
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1244
    :goto_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1245
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1246
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1249
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v2, :cond_4

    .line 1250
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1253
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1255
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_b

    .line 1258
    const/16 v2, 0x753d

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1261
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, p2, v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 1263
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 1264
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v2, :cond_6

    .line 1292
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1293
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1295
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1296
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1301
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1307
    :cond_7
    if-nez p3, :cond_8

    .line 1308
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1316
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1317
    .restart local v1       #msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1319
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1241
    .end local v1           #msg:Landroid/os/Message;
    :cond_9
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_2

    .line 1266
    :catch_0
    move-exception v0

    .line 1268
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_a

    .line 1271
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1276
    :goto_4
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 1273
    :cond_a
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 1280
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_c

    .line 1281
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1286
    :goto_5
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 1283
    :cond_c
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_5

    .line 1301
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_7

    .line 1330
    :cond_e
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startPausingLocked(ZZ)V
    .locals 1
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1204
    return-void
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 14
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 1016
    .local v2, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 1018
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 1019
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 1025
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    .line 1026
    const-string v12, ""

    .line 1028
    .local v12, applicationName:Ljava/lang/String;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 1029
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 1037
    if-eqz v12, :cond_3

    const-string v0, "com.android.contacts/.activities.PeopleActivity"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.mms/.ui.ConversationComposer"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.gallery3d/.app.Gallery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    :cond_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing JIT for 3 seconds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1059
    .end local v12           #applicationName:Ljava/lang/String;
    :goto_2
    return-void

    .line 1021
    :cond_2
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 1030
    .restart local v12       #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1031
    .local v13, e:Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    const-string v1, "Exception cannot get application name "

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1044
    .end local v13           #e:Ljava/lang/NullPointerException;
    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1048
    :catch_1
    move-exception v13

    .line 1049
    .local v13, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v12           #applicationName:Ljava/lang/String;
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "activity"

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4789
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 4791
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 4792
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_1

    .line 4796
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v3, "no-history"

    invoke-virtual {p0, v2, v6, v4, v3}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4805
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5

    .line 4806
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2

    .line 4807
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_2

    .line 4808
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4811
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4813
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4816
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4819
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_3

    .line 4820
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4822
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 4823
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4824
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 4826
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4827
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4828
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4843
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    return-void

    .line 4829
    :catch_0
    move-exception v0

    .line 4833
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4835
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4837
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4838
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v2, :cond_5

    .line 4839
    const-string v2, "stop-except"

    invoke-virtual {p0, p1, v7, v6, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 709
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    return v0
.end method

.method private updatePinupHiddenFlag()V
    .locals 6

    .prologue
    .line 521
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 522
    .local v0, N:I
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->needsPinupActivtiesFoceHidden()Z

    move-result v2

    .line 524
    .local v2, needsFlags:Z
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 525
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 526
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 527
    .local v3, options:I
    const/high16 v5, 0x80

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 528
    if-eqz v2, :cond_1

    .line 529
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 524
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 531
    :cond_1
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, -0x4001

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_1

    .line 535
    .end local v3           #options:I
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 5576
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 5577
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 5579
    .local v1, origId:J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5580
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 5581
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5584
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 5585
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 5586
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_1

    .line 5587
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5588
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5591
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5593
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5595
    monitor-exit v5

    .line 5596
    return-void

    .line 5593
    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5595
    .end local v1           #origId:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 29
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 4904
    const/16 v23, 0x0

    .line 4906
    .local v23, res:Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .line 4907
    .local v25, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 4908
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v26, 0x0

    .line 4909
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 4910
    .local v13, NS:I
    const/4 v12, 0x0

    .line 4911
    .local v12, NF:I
    const/4 v14, 0x0

    .line 4912
    .local v14, NT:I
    const/16 v24, 0x0

    .line 4913
    .local v24, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 4914
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 4915
    .local v18, enableScreen:Z
    const/4 v15, 0x0

    .line 4917
    .local v15, activityRemoved:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 4918
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4919
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 4920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4921
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4925
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 4926
    .local v22, index:I
    if-ltz v22, :cond_b

    .line 4927
    move-object/from16 v23, v4

    .line 4929
    if-eqz p2, :cond_1

    .line 4930
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4938
    :cond_1
    if-eqz p3, :cond_2

    .line 4939
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4943
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4950
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4952
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 4953
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 4954
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 4960
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4963
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 4964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_5

    .line 4965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4966
    const/16 v18, 0x1

    .line 4975
    :cond_5
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 4976
    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4977
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 4978
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4979
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v19, v20

    .line 4981
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 4982
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4983
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v27, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v26, v27

    .line 4986
    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_8

    .line 4987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 4988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4990
    :cond_8
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4995
    if-eqz v24, :cond_9

    .line 4997
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5006
    :cond_9
    :goto_3
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v13, :cond_e

    .line 5007
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5008
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5009
    :try_start_6
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_d

    .line 5010
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 5014
    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5006
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 4943
    .end local v21           #i:I
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_3

    goto/16 :goto_0

    .line 4970
    :cond_b
    if-eqz p2, :cond_5

    .line 4971
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_1

    .line 4990
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #index:I
    :catchall_0
    move-exception v2

    :goto_6
    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 4976
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #index:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4998
    :catch_0
    move-exception v17

    .line 4999
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 5012
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5

    .line 5014
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 5019
    :cond_e
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v12, :cond_f

    .line 5020
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5021
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 5022
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 5023
    monitor-exit v3

    .line 5019
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 5023
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 5027
    :cond_f
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v14, :cond_10

    .line 5028
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5029
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 5027
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 5032
    :cond_10
    if-eqz v16, :cond_11

    .line 5033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 5036
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 5040
    if-eqz v18, :cond_12

    .line 5041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 5044
    :cond_12
    if-eqz v15, :cond_13

    .line 5045
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5048
    :cond_13
    return-object v23

    .line 4990
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_3
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_6

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v27       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v26, v27

    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_6
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "timeout"

    .prologue
    .line 1338
    const/4 v2, 0x0

    .line 1340
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1341
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1342
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1343
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1344
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1346
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 1347
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1348
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1349
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1370
    :cond_0
    :goto_0
    monitor-exit v4

    .line 1371
    return-void

    .line 1351
    :cond_1
    const/16 v3, 0x753c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1370
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1356
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_3

    .line 1359
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1360
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    goto :goto_0

    .line 1362
    :cond_3
    const/16 v5, 0x753c

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    const-string v3, "(none)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1094
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 14
    .parameter "r"
    .parameter "icicle"
    .parameter "thumbnail"
    .parameter "description"

    .prologue
    .line 1375
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_1

    .line 1376
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    if-eqz p2, :cond_2

    .line 1384
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1385
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1386
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1388
    :cond_2
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v10, :cond_0

    .line 1390
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1391
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1392
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1395
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 1396
    .local v8, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    .line 1397
    .local v5, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v10, :cond_3

    invoke-virtual {v5, v8, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1398
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1399
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 1403
    :cond_4
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_5

    .line 1404
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 1406
    :cond_5
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v10, :cond_6

    .line 1407
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "stop-config"

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1408
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1413
    :cond_6
    const/4 v2, 0x0

    .line 1415
    .local v2, fgApp:Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    .line 1416
    .local v4, inForeground:Z
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_b

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v9

    .line 1418
    .local v9, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1419
    .local v7, resumed:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_7

    .line 1420
    const/4 v4, 0x1

    .line 1425
    .end local v7           #resumed:Lcom/android/server/am/ActivityRecord;
    :cond_8
    if-nez v4, :cond_a

    .line 1426
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1427
    .local v6, pausing:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_9

    .line 1428
    const/4 v4, 0x1

    .line 1440
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #pausing:Lcom/android/server/am/ActivityRecord;
    .end local v9           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_a
    :goto_1
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_d

    if-nez v4, :cond_0

    :goto_2
    iget-wide v10, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v11, :cond_0

    .line 1444
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1445
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_0

    .line 1434
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_c

    .line 1435
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 1436
    :cond_c
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_a

    .line 1437
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 1440
    :cond_d
    if-eqz v2, :cond_0

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v2, :cond_0

    goto :goto_2
.end method

.method public arrangedWindowStateLocked(Ljava/util/List;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6417
    .local p1, resumeRecord:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v9

    .line 6418
    .local v9, isPhone:Z
    const/4 v12, 0x0

    .line 6419
    .local v12, obscuredMask:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6420
    .local v13, orientation:I
    const/4 v4, 0x0

    .line 6421
    .local v4, bFullZoneInfo:Z
    const/4 v5, 0x0

    .line 6422
    .local v5, bRefreshSplit:Z
    const/4 v6, 0x0

    .line 6423
    .local v6, controlBarRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 6424
    const/16 v18, 0x0

    .line 6425
    .local v18, zoneInfo:I
    const/4 v11, 0x0

    .line 6426
    .local v11, notifyRecord:Lcom/android/server/am/ActivityRecord;
    const/16 v19, 0x0

    .line 6427
    .local v19, zoneRecord:Lcom/android/server/am/ActivityRecord;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6429
    .local v15, removeRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_6

    .line 6430
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 6431
    .local v14, r:Lcom/android/server/am/ActivityRecord;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    const/high16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 6432
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    and-int/lit8 v18, v20, 0xf

    .line 6433
    and-int v20, v12, v18

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 6434
    or-int v12, v12, v18

    .line 6435
    move-object/from16 v19, v14

    .line 6438
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 6439
    move-object v11, v14

    .line 6474
    :cond_0
    :goto_1
    if-eqz v19, :cond_1

    .line 6475
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 6476
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->calculateControlbar(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    .line 6429
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 6442
    :cond_2
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    const/high16 v21, 0x100

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 6443
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    const/high16 v21, 0x40

    and-int v20, v20, v21

    if-eqz v20, :cond_5

    .line 6444
    const/16 v18, 0x0

    .line 6445
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_4

    .line 6446
    const/16 v18, 0xc

    .line 6451
    :cond_3
    :goto_2
    if-eqz v18, :cond_0

    .line 6452
    const/4 v5, 0x1

    .line 6453
    or-int v12, v12, v18

    .line 6454
    move-object v11, v14

    .line 6455
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6456
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x10

    move/from16 v0, v20

    iput v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6457
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    or-int v20, v20, v18

    move/from16 v0, v20

    iput v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6460
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v10

    .line 6461
    .local v10, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v20, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 6462
    .local v17, windowInfo:Landroid/os/Bundle;
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static/range {v18 .. v18}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 6447
    .end local v10           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v17           #windowInfo:Landroid/os/Bundle;
    :cond_4
    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v12, v0, :cond_3

    .line 6448
    const/16 v18, 0x3

    goto :goto_2

    .line 6465
    :cond_5
    if-eqz v12, :cond_0

    if-eqz v9, :cond_0

    .line 6466
    move-object/from16 v11, v19

    .line 6467
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    const v21, 0xfffff0

    and-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6468
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    const/high16 v21, 0x100

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6469
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6481
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 6482
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 6483
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6487
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    if-eqz v11, :cond_8

    .line 6488
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 6489
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 6494
    .end local v7           #i:I
    .end local v11           #notifyRecord:Lcom/android/server/am/ActivityRecord;
    .end local v15           #removeRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v18           #zoneInfo:I
    .end local v19           #zoneRecord:Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/16 v20, 0xf

    move/from16 v0, v20

    if-ne v12, v0, :cond_b

    const/4 v4, 0x1

    .line 6495
    :goto_4
    new-instance v16, Landroid/content/Intent;

    const-string v20, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6496
    .local v16, splitZoneInfoIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v4, :cond_d

    .line 6497
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    .line 6499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 6500
    const-string v20, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v21, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6501
    const-string v20, "com.sec.android.extra.CONTROL_BAR_RECT"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6502
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(IILandroid/graphics/Rect;)V

    .line 6508
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6516
    :cond_9
    :goto_6
    if-eqz p1, :cond_10

    .line 6517
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 6518
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowManagerService;->getAppWindowMode(Landroid/view/IApplicationToken;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 6519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto :goto_7

    .line 6494
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v16           #splitZoneInfoIntent:Landroid/content/Intent;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 6505
    .restart local v16       #splitZoneInfoIntent:Landroid/content/Intent;
    :cond_c
    const-string v20, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 6509
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    if-nez v5, :cond_f

    :cond_e
    if-nez v9, :cond_9

    if-nez v4, :cond_9

    .line 6510
    :cond_f
    const-string v20, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v21, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6511
    const-string v20, "com.sec.android.extra.CONTROL_BAR_RECT"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6513
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(IILandroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 6523
    :cond_10
    return-void
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1078
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1079
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 1080
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1086
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1084
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1088
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1089
    return-void
.end method

.method final canResumedActivitiesLocked()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v12, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 616
    .local v1, N:I
    const/4 v2, 0x0

    .line 617
    .local v2, currentTask:I
    const/4 v8, 0x0

    .line 618
    .local v8, normalActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 619
    .local v4, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 620
    .local v9, obscuredMask:I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v7

    .line 622
    .local v7, mw:Lcom/android/server/am/MultiWindowManagerService;
    add-int/lit8 v5, v1, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 624
    .local v11, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_1

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 628
    :cond_1
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, v14, :cond_0

    .line 629
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 631
    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    .line 632
    .local v6, mode:I
    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    .line 633
    .local v10, option:I
    const/high16 v14, 0x200

    if-ne v6, v14, :cond_4

    .line 634
    const/high16 v14, 0x30

    and-int/2addr v14, v10

    if-nez v14, :cond_0

    .line 636
    if-eqz v8, :cond_2

    const/high16 v14, 0x80

    and-int/2addr v14, v10

    if-nez v14, :cond_2

    .line 638
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v14, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 642
    :cond_2
    and-int/lit8 v3, v10, 0xf

    .line 643
    .local v3, currentZone:I
    if-eqz v3, :cond_3

    and-int v14, v9, v3

    if-eq v14, v3, :cond_0

    .line 645
    :cond_3
    or-int/2addr v9, v3

    .line 646
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 648
    .end local v3           #currentZone:I
    :cond_4
    const/high16 v14, 0x100

    if-ne v6, v14, :cond_0

    .line 649
    if-nez v8, :cond_5

    .line 650
    move-object v8, v11

    .line 652
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->isHomeTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 653
    move-object v4, v11

    .line 656
    :cond_6
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v13

    .line 657
    .local v13, winInfo:Landroid/os/Bundle;
    if-eqz v13, :cond_0

    .line 658
    const-string v14, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 659
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 666
    .end local v6           #mode:I
    .end local v10           #option:I
    .end local v11           #r:Lcom/android/server/am/ActivityRecord;
    .end local v13           #winInfo:Landroid/os/Bundle;
    :cond_7
    if-eqz v8, :cond_8

    const/16 v14, 0xf

    if-eq v9, v14, :cond_8

    .line 667
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 668
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    :cond_8
    return-object v12
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter "rect"

    .prologue
    const/4 v3, 0x0

    .line 4779
    const/4 v2, 0x0

    .line 4780
    .local v2, returnRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    .line 4781
    .local v0, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-direct {p0, v3, v3}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 4782
    .local v1, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 4783
    return-object v2
.end method

.method checkReadyForSleepLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1097
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-nez v4, :cond_a

    .line 1104
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_4

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 1107
    .local v3, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1111
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_0

    .line 1114
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1135
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_0

    .line 1120
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    .line 1124
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_0

    .line 1127
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1143
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1147
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_9

    .line 1148
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1149
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_7

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8

    .line 1150
    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1147
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1154
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1162
    .end local v0           #i:I
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1165
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1167
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 1168
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .parameter "r"
    .parameter "cleanServices"
    .parameter "setState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5332
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 5333
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5335
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 5336
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5339
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 5340
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 5342
    if-eqz p3, :cond_2

    .line 5344
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5350
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5351
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5354
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 5355
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 5356
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 5357
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    .line 5358
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 5361
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5364
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 5365
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5368
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 5372
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5376
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5377
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 5415
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 5416
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5417
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 5419
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 5421
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 5423
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 7
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5434
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    .line 5436
    .local v4, resumed:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 5437
    .local v2, lastIsOpaque:Z
    const/4 v0, 0x0

    .line 5438
    .local v0, activityRemoved:Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_6

    .line 5439
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5440
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 5438
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5443
    :cond_1
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_2

    .line 5444
    const/4 v2, 0x1

    .line 5446
    :cond_2
    if-eqz p1, :cond_3

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_0

    .line 5449
    :cond_3
    if-eqz v2, :cond_0

    .line 5456
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_3
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 5465
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5466
    const/4 v0, 0x1

    goto :goto_1

    .line 5456
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_0

    goto :goto_3

    .line 5470
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v0, :cond_7

    .line 5471
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5473
    :cond_7
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 10
    .parameter "r"
    .parameter "removeFromApp"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5486
    const/16 v6, 0x7542

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5490
    const/4 v4, 0x0

    .line 5492
    .local v4, removedFromHistory:Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5494
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 5496
    .local v1, hadApp:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 5497
    if-eqz p2, :cond_2

    .line 5498
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 5499
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 5500
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5502
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 5503
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 5504
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5507
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 5510
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 5514
    .end local v2           #idx:I
    :cond_2
    const/4 v5, 0x0

    .line 5518
    .local v5, skipDestroy:Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5532
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5533
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 5542
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 5545
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5546
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5547
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5548
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5566
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_2
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 5568
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    .line 5569
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    :cond_4
    return v4

    .line 5494
    .end local v1           #hadApp:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 5520
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v0

    .line 5525
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    .line 5526
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5527
    const/4 v4, 0x1

    .line 5528
    const/4 v5, 0x1

    goto :goto_1

    .line 5552
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 5556
    .end local v5           #skipDestroy:Z
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 5557
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5558
    const/4 v4, 0x1

    goto :goto_2

    .line 5562
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .locals 1

    .prologue
    .line 6576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 6577
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 3
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v2, 0x0

    .line 2006
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2007
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 2010
    const/high16 v1, 0x1000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 2011
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2014
    :cond_0
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2016
    :cond_1
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 25
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1758
    .local v12, count:I
    add-int/lit8 v16, v12, -0x1

    .line 1759
    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 1760
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 1763
    :cond_0
    const/4 v7, 0x0

    .line 1764
    .local v7, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 1767
    .local v3, behindFullscreen:Z
    const/4 v4, 0x0

    .line 1768
    .local v4, obscuredMask:I
    const/4 v5, -0x1

    .line 1770
    .local v5, currentTaskId:I
    :goto_1
    if-ltz v16, :cond_1a

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1772
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_1

    move-object v7, v6

    .line 1776
    :cond_1
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3

    .line 1770
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 1780
    :cond_3
    if-eqz p3, :cond_4

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    const/4 v13, 0x1

    .line 1786
    .local v13, doThisProcess:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->shouldHideActivity(ZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1787
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_7

    .line 1788
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_5

    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_7

    .line 1791
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1793
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1794
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    if-eq v2, v0, :cond_6

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    if-ne v2, v0, :cond_7

    :cond_6
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_7

    .line 1799
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :cond_7
    :goto_4
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v5, v2, :cond_2

    .line 1814
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_2

    .line 1780
    .end local v13           #doThisProcess:Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 1801
    .restart local v13       #doThisProcess:Z
    :catch_0
    move-exception v14

    .line 1804
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception thrown making hidden: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1819
    .end local v14           #e:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_a

    if-eqz v13, :cond_a

    .line 1820
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1823
    :cond_a
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_1d

    .line 1824
    :cond_b
    if-eqz p3, :cond_c

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1831
    :cond_c
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_d

    .line 1832
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p4

    invoke-virtual {v6, v2, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1834
    :cond_d
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_e

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1839
    :cond_e
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_f

    .line 1840
    const/4 v2, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1883
    :cond_f
    :goto_5
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p4, p4, v2

    .line 1886
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v23, 0x4

    and-int v2, v2, v23

    if-eqz v2, :cond_21

    const/16 v17, 0x1

    .line 1887
    .local v17, isForceTitleBar:Z
    :goto_6
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_10

    if-eqz v17, :cond_11

    .line 1888
    :cond_10
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v23, 0x100

    move/from16 v0, v23

    if-ne v2, v0, :cond_22

    .line 1889
    or-int/lit8 v4, v4, 0xf

    .line 1893
    :goto_7
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v5, v2, :cond_11

    .line 1894
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1903
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseWindowLayoutParam(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 1904
    .local v18, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v15, 0x0

    .line 1905
    .local v15, hasFullOpaqueFlag:Z
    const/16 v20, 0x0

    .line 1906
    .local v20, requestedFullOpaque:Z
    if-eqz v18, :cond_12

    .line 1909
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v18, :cond_13

    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v23, 0x400

    and-int v2, v2, v23

    const/high16 v23, 0x400

    move/from16 v0, v23

    if-ne v2, v0, :cond_13

    .line 1912
    const/4 v15, 0x1

    .line 1916
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1917
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    move/from16 v20, v0

    .line 1924
    :cond_14
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_15

    if-nez v15, :cond_15

    if-eqz v20, :cond_16

    :cond_15
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v23, 0x100

    move/from16 v0, v23

    if-eq v2, v0, :cond_17

    :cond_16
    const/16 v2, 0xf

    if-ne v4, v2, :cond_2

    .line 1934
    :cond_17
    move/from16 v9, v16

    .line 1935
    .local v9, belowIndex:I
    const/4 v8, 0x0

    .local v8, bPinupWindow:Z
    move v10, v9

    .line 1936
    .end local v9           #belowIndex:I
    .local v10, belowIndex:I
    :goto_8
    add-int/lit8 v9, v10, -0x1

    .end local v10           #belowIndex:I
    .restart local v9       #belowIndex:I
    if-lez v10, :cond_19

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v11, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1938
    .local v11, belowMode:I
    const/high16 v2, 0x80

    and-int/2addr v2, v11

    if-nez v2, :cond_18

    if-eqz v7, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v23

    move/from16 v0, v23

    if-le v2, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v2, :cond_23

    .line 1942
    :cond_18
    const/4 v8, 0x1

    .line 1948
    .end local v11           #belowMode:I
    :cond_19
    const/4 v3, 0x1

    .line 1950
    if-nez v8, :cond_2

    .line 1951
    add-int/lit8 v16, v16, -0x1

    .line 1960
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v8           #bPinupWindow:Z
    .end local v9           #belowIndex:I
    .end local v13           #doThisProcess:Z
    .end local v15           #hasFullOpaqueFlag:Z
    .end local v17           #isForceTitleBar:Z
    .end local v18           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #requestedFullOpaque:Z
    :cond_1a
    :goto_9
    if-ltz v16, :cond_25

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1966
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1c

    .line 1967
    if-eqz v3, :cond_24

    .line 1968
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1c

    .line 1971
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1973
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1974
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    if-eq v2, v0, :cond_1b

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    if-ne v2, v0, :cond_1c

    :cond_1b
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1c

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1c

    .line 1979
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1997
    :cond_1c
    :goto_a
    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    .line 1844
    .restart local v13       #doThisProcess:Z
    :cond_1d
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1e

    .line 1849
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_5

    .line 1851
    :cond_1e
    if-nez p3, :cond_f

    .line 1856
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v19

    .line 1857
    .local v19, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v22

    .line 1858
    .local v22, winInfo:Landroid/os/Bundle;
    if-eqz v22, :cond_1f

    const-string v2, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v21, 0x1

    .line 1861
    .local v21, stayResumedActivity:Z
    :goto_b
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1862
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    if-eq v2, v0, :cond_20

    const/4 v2, 0x1

    :goto_c
    or-int v2, v2, v21

    if-eqz v2, :cond_f

    move-object/from16 v0, p2

    if-eq v6, v0, :cond_f

    .line 1868
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1869
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1870
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1871
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1872
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 1873
    :catch_1
    move-exception v14

    .line 1876
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception thrown making visibile: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1858
    .end local v14           #e:Ljava/lang/Exception;
    .end local v21           #stayResumedActivity:Z
    :cond_1f
    const/16 v21, 0x0

    goto :goto_b

    .line 1862
    .restart local v21       #stayResumedActivity:Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_c

    .line 1886
    .end local v19           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v21           #stayResumedActivity:Z
    .end local v22           #winInfo:Landroid/os/Bundle;
    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1891
    .restart local v17       #isForceTitleBar:Z
    :cond_22
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v4, v2

    goto/16 :goto_7

    .restart local v8       #bPinupWindow:Z
    .restart local v9       #belowIndex:I
    .restart local v11       #belowMode:I
    .restart local v15       #hasFullOpaqueFlag:Z
    .restart local v18       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v20       #requestedFullOpaque:Z
    :cond_23
    move v10, v9

    .line 1945
    .end local v9           #belowIndex:I
    .restart local v10       #belowIndex:I
    goto/16 :goto_8

    .line 1981
    .end local v8           #bPinupWindow:Z
    .end local v10           #belowIndex:I
    .end local v11           #belowMode:I
    .end local v13           #doThisProcess:Z
    .end local v15           #hasFullOpaqueFlag:Z
    .end local v17           #isForceTitleBar:Z
    .end local v18           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #requestedFullOpaque:Z
    :catch_2
    move-exception v14

    .line 1984
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception thrown making hidden: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1991
    .end local v14           #e:Ljava/lang/Exception;
    :cond_24
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_1c

    .line 1994
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 1999
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    :cond_25
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6254
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_1

    .line 6366
    :cond_0
    :goto_0
    return v3

    .line 6265
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 6266
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v5, v1, :cond_2

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 6273
    :cond_2
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 6276
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 6282
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6283
    .local v2, oldConfig:Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6289
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 6290
    .local v0, changes:I
    if-nez v0, :cond_4

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 6298
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_6

    .line 6301
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 6302
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_0

    .line 6313
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-nez v5, :cond_7

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_c

    .line 6315
    :cond_7
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 6316
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6317
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6318
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_9

    .line 6321
    :cond_8
    const-string v5, "config"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_1
    move v3, v4

    .line 6348
    goto :goto_0

    .line 6322
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_a

    .line 6328
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto :goto_0

    .line 6330
    :cond_a
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_b

    .line 6337
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6338
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 6342
    :cond_b
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6343
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 6356
    :cond_c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_d

    .line 6359
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6364
    :cond_d
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 6360
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 5091
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 5094
    .local v2, index:I
    if-gez v2, :cond_0

    .line 5113
    :goto_0
    return v3

    .line 5097
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5099
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_1

    .line 5100
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5101
    .local v1, cur:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_2

    .line 5113
    .end local v1           #cur:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 5104
    .restart local v1       #cur:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5107
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5110
    :cond_4
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 5111
    add-int/lit8 v2, v2, -0x1

    .line 5112
    goto :goto_1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 5149
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "immediate"

    .prologue
    .line 5158
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 5159
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate finish request for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    const/4 v4, 0x0

    .line 5248
    :goto_0
    return v4

    .line 5164
    :cond_0
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 5165
    .local v3, option:I
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x80

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5168
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->moveMwPinupToFront()V

    .line 5172
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 5173
    const/16 v4, 0x7531

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5176
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p2, v4, :cond_3

    .line 5177
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5178
    .local v2, next:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v5, :cond_3

    .line 5179
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_2

    .line 5181
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 5183
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 5187
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5193
    .end local v2           #next:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_5

    if-lez p2, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v4, v5, :cond_5

    .line 5194
    :cond_4
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 5196
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 5200
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 5201
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v4, :cond_6

    .line 5202
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_6

    .line 5203
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5207
    :cond_6
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 5209
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 5213
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5216
    :cond_7
    if-eqz p6, :cond_9

    .line 5217
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5219
    :cond_9
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_d

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_e

    .line 5220
    :cond_a
    if-lez p2, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v4, v5, :cond_f

    :cond_b
    const/4 v0, 0x1

    .line 5224
    .local v0, endTask:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_10

    const/16 v4, 0x2009

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5229
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 5232
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5235
    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5248
    .end local v0           #endTask:Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5219
    :cond_d
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p1, :cond_a

    .line 5238
    :cond_e
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_c

    .line 5242
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 5220
    :cond_f
    const/4 v0, 0x0

    goto :goto_1

    .line 5224
    .restart local v0       #endTask:Z
    :cond_10
    const/16 v4, 0x2007

    goto :goto_2

    .line 5232
    :cond_11
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_c

    goto :goto_3

    .line 5242
    .end local v0           #endTask:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 5118
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 5119
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 5123
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_0

    .line 5124
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 5128
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5130
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 5137
    :cond_1
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5138
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5139
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5140
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 5141
    return-void
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 5072
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5073
    .local v6, self:Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_1

    .line 5088
    :cond_0
    return-void

    .line 5078
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 5079
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5080
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_4

    .line 5081
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5083
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 5078
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getFrontActivityPosition()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 4555
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4556
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4557
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v7, 0x200

    if-ne v5, v7, :cond_1

    .line 4558
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 4559
    .local v2, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 4561
    .local v4, winInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 4562
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 4563
    const-string v5, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 4565
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_0
    monitor-exit v6

    .line 4571
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #winInfo:Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 4568
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4569
    .local v0, fullscreen:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 4571
    new-instance v1, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-exit v6

    goto :goto_0

    .line 4572
    .end local v0           #fullscreen:Landroid/graphics/Point;
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .locals 13
    .parameter "taskId"
    .parameter "inclThumbs"

    .prologue
    .line 6149
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6150
    .local v7, resumed:Lcom/android/server/am/ActivityRecord;
    new-instance v11, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v11}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 6152
    .local v11, thumbs:Lcom/android/server/am/TaskAccessInfo;
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6153
    .local v0, NA:I
    const/4 v4, 0x0

    .line 6154
    .local v4, j:I
    const/4 v2, 0x0

    .line 6155
    .local v2, holder:Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v4, v0, :cond_0

    .line 6156
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6157
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_2

    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v12, p1, :cond_2

    .line 6158
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 6164
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lt v4, v0, :cond_3

    .line 6223
    :cond_1
    :goto_1
    return-object v11

    .line 6161
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 6162
    goto :goto_0

    .line 6168
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iput-object v12, v11, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 6169
    iput v4, v11, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 6171
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6172
    .local v10, subtasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v10, v11, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 6173
    const/4 v5, 0x0

    .line 6174
    .local v5, lastActivity:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    if-ge v4, v0, :cond_5

    .line 6175
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6176
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v4, v4, 0x1

    .line 6177
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_4

    .line 6180
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v12, p1, :cond_8

    .line 6194
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 6196
    iget-boolean v12, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v12, :cond_9

    .line 6197
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v8

    .line 6198
    .local v8, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 6199
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-ne v6, v5, :cond_6

    .line 6200
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 6201
    .local v9, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 6213
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v8           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_7
    :goto_3
    iget v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v12, :cond_1

    .line 6214
    new-instance v12, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v12, p0, v11}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v12, v11, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1

    .line 6183
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object v5, v1

    .line 6184
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v12, v2, :cond_4

    if-eqz v2, :cond_4

    .line 6185
    iget v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 6186
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 6187
    new-instance v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v9}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 6188
    .restart local v9       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 6189
    iput-object v1, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 6190
    add-int/lit8 v12, v4, -0x1

    iput v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 6191
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6206
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    .end local v9           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_9
    if-ne v7, v5, :cond_7

    .line 6207
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 6208
    .restart local v9       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 6
    .parameter "tr"

    .prologue
    .line 6091
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    .line 6093
    .local v1, info:Lcom/android/server/am/TaskAccessInfo;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_1

    .line 6094
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 6095
    .local v3, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 6096
    .local v2, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_0

    .line 6097
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 6109
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :goto_0
    return-object v1

    .line 6103
    .end local v2           #resumed:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6104
    .restart local v2       #resumed:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_2

    .line 6105
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 6107
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 7
    .parameter "token"

    .prologue
    .line 4518
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4519
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4520
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4521
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4

    .line 4526
    :goto_0
    return-object v3

    .line 4523
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4525
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4526
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    new-instance v3, Landroid/os/Bundle;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v4

    goto :goto_0

    .line 4527
    .end local v0           #index:I
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getWindowMode(Landroid/os/IBinder;)I
    .locals 4
    .parameter "token"

    .prologue
    .line 4501
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4502
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4503
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4504
    const/high16 v2, 0x100

    monitor-exit v3

    .line 4507
    :goto_0
    return v2

    .line 4506
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4507
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    monitor-exit v3

    goto :goto_0

    .line 4508
    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isHomeTask(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 675
    if-nez p1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v2

    .line 678
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 679
    .local v1, rd:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_2

    .line 680
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_0

    .line 681
    const/4 v2, 0x1

    goto :goto_0
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "token"

    .prologue
    .line 700
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 701
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isTaskResumed(I)Z
    .locals 6
    .parameter "taskID"

    .prologue
    .line 2738
    const/4 v3, 0x0

    .line 2739
    .local v3, resumed:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2741
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2742
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2743
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    .line 2744
    const/4 v3, 0x1

    .line 2749
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v3

    .line 2741
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .locals 2
    .parameter "launchFlags"

    .prologue
    const v1, 0x10004000

    .line 3655
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 3660
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 3662
    :cond_0
    return-void
.end method

.method final moveHomeToFrontLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5675
    const/4 v0, 0x0

    .line 5676
    .local v0, homeTask:Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 5677
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5678
    .local v1, hr:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_2

    .line 5679
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5683
    .end local v1           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 5684
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 5686
    :cond_1
    return-void

    .line 5676
    .restart local v1       #hr:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public moveMwAppTokensToTopLocked()V
    .locals 8

    .prologue
    .line 5626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5630
    .local v0, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 5631
    .local v4, top:I
    move v2, v4

    .line 5632
    .local v2, pos:I
    if-gez v4, :cond_1

    .line 5651
    :cond_0
    :goto_0
    return-void

    .line 5637
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5638
    .local v5, topRecord:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_3

    .line 5639
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5640
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 5641
    .local v1, option:I
    const/high16 v6, 0x80

    and-int/2addr v6, v1

    if-eqz v6, :cond_2

    const/high16 v6, 0x10

    and-int/2addr v6, v1

    if-nez v6, :cond_2

    .line 5643
    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5645
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 5646
    goto :goto_1

    .line 5648
    .end local v1           #option:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 5649
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .parameter "task"
    .parameter "reason"

    .prologue
    .line 5990
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveTaskToBack: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v10, :cond_1

    .line 5996
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5997
    .local v7, next:Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 5998
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 6000
    :cond_0
    if-eqz v7, :cond_1

    .line 6002
    const/4 v4, 0x1

    .line 6004
    .local v4, moveOK:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 6008
    :goto_0
    if-nez v4, :cond_1

    .line 6009
    const/4 v10, 0x0

    .line 6087
    .end local v4           #moveOK:Z
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v10

    .line 6005
    .restart local v4       #moveOK:Z
    .restart local v7       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 6006
    .local v2, e:Landroid/os/RemoteException;
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 6014
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #moveOK:Z
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6019
    .local v5, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6020
    .local v0, N:I
    const/4 v1, 0x0

    .line 6021
    .local v1, bottom:I
    const/4 v8, 0x0

    .line 6023
    .local v8, pos:I
    const/4 v3, 0x0

    .line 6028
    .local v3, frontActivity:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-ge v8, v0, :cond_4

    .line 6029
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 6032
    .local v9, r:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v10, p1, :cond_3

    .line 6040
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6041
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6042
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6043
    iget v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v11, 0x10

    or-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6044
    iget v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_2

    .line 6045
    iget v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v11, -0x882001

    and-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6048
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 6051
    iget-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v10, :cond_3

    .line 6052
    move-object v3, v9

    .line 6056
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 6057
    goto :goto_2

    .line 6060
    .end local v9           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_5

    if-eqz v3, :cond_5

    .line 6061
    iget v10, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    const/high16 v11, 0x20

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    .line 6063
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v6

    .line 6064
    .local v6, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v6, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 6069
    .end local v6           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_5
    if-eqz p2, :cond_7

    iget-object v10, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    .line 6071
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6073
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 6074
    .restart local v9       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_6

    .line 6075
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6081
    .end local v9           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 6086
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 6087
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 6078
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v11, 0x200b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 1
    .parameter "tr"
    .parameter "reason"
    .parameter "options"

    .prologue
    .line 5731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 5732
    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .locals 35
    .parameter "tr"
    .parameter "reason"
    .parameter "options"
    .parameter "flags"

    .prologue
    .line 5737
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    .line 5738
    .local v25, task:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 5739
    .local v27, top:I
    const/4 v8, 0x0

    .line 5740
    .local v8, hasMetHome:Z
    const/4 v9, 0x0

    .line 5741
    .local v9, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v10, -0x1

    .line 5743
    .local v10, homeTask:I
    if-ltz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 5745
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x1

    and-int v32, v32, v33

    if-eqz v32, :cond_1

    .line 5746
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5752
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v32

    if-nez v32, :cond_2

    .line 5972
    :goto_1
    return-void

    .line 5748
    :cond_1
    const/16 v32, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5758
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5762
    .local v15, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 5763
    move/from16 v20, v27

    .line 5766
    .local v20, pos:I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5767
    .local v19, pinupmoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5768
    .local v6, freemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v5, 0x0

    .line 5769
    .local v5, bMoveTask:Z
    const/high16 v22, 0x100

    .line 5770
    .local v22, reasonWindowMode:I
    const/16 v23, 0x0

    .line 5771
    .local v23, reasonWindowZone:I
    if-eqz p2, :cond_3

    .line 5772
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_f

    .line 5774
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    .line 5775
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    and-int/lit8 v23, v32, 0xf

    .line 5782
    :cond_3
    :goto_2
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 5783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 5784
    .local v21, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 5785
    move-object/from16 v9, v21

    .line 5786
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 5794
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_4
    if-ltz v20, :cond_1b

    .line 5795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 5797
    .restart local v21       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v18

    .line 5801
    .local v18, option:I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 5809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5811
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5812
    add-int/lit8 v27, v27, -0x1

    .line 5815
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    .line 5816
    .local v17, oldWindowMode:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    .line 5817
    .local v14, mode:I
    const/16 v29, 0x0

    .line 5818
    .local v29, windowPosition:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v16

    .line 5820
    .local v16, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    .line 5821
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v0, v10, :cond_5

    .line 5822
    const/4 v8, 0x1

    .line 5825
    :cond_5
    const/high16 v32, 0x10

    and-int v32, v32, v18

    if-eqz v32, :cond_11

    .line 5826
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, -0x100001

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5831
    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 5832
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, 0x882000

    or-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5835
    :cond_7
    const/high16 v32, 0x200

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 5837
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x40

    and-int v32, v32, v33

    if-eqz v32, :cond_a

    .line 5838
    const/high16 v32, 0x100

    move/from16 v0, v32

    if-ne v14, v0, :cond_8

    .line 5839
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5842
    :cond_8
    if-eqz v23, :cond_12

    .line 5843
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, -0x10

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5844
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    or-int v32, v32, v23

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5845
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5850
    :cond_9
    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    .line 5851
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v29

    .line 5852
    if-eqz v29, :cond_a

    .line 5853
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v28

    .line 5854
    .local v28, windowInfo:Landroid/os/Bundle;
    const-string v32, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5887
    .end local v28           #windowInfo:Landroid/os/Bundle;
    :cond_a
    :goto_7
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    if-eqz v29, :cond_c

    .line 5888
    :cond_b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 5889
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 5893
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 5894
    if-nez p2, :cond_d

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v32

    const/high16 v33, 0x200

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 5896
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    and-int/lit8 v30, v32, 0xf

    .line 5897
    .local v30, zoneInfo:I
    if-eqz v30, :cond_d

    const/16 v32, 0xf

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 5899
    xor-int/lit8 v32, v30, -0x1

    and-int/lit8 v24, v32, 0xf

    .line 5900
    .local v24, reverseZone:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 5901
    .local v31, zoneRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_d

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_d

    .line 5902
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5903
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5909
    .end local v24           #reverseZone:I
    .end local v30           #zoneInfo:I
    .end local v31           #zoneRecord:Lcom/android/server/am/ActivityRecord;
    :cond_d
    const/high16 v32, 0x80

    and-int v32, v32, v18

    if-nez v32, :cond_e

    .line 5910
    const/4 v5, 0x1

    .line 5930
    .end local v14           #mode:I
    .end local v16           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v17           #oldWindowMode:I
    .end local v29           #windowPosition:Landroid/graphics/Rect;
    :cond_e
    :goto_8
    add-int/lit8 v20, v20, -0x1

    .line 5931
    goto/16 :goto_4

    .line 5777
    .end local v11           #i:I
    .end local v18           #option:I
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getWindowMode()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    .line 5778
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getWindowMode()I

    move-result v32

    and-int/lit8 v23, v32, 0xf

    goto/16 :goto_2

    .line 5782
    .restart local v11       #i:I
    .restart local v21       #r:Lcom/android/server/am/ActivityRecord;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 5827
    .restart local v14       #mode:I
    .restart local v16       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v17       #oldWindowMode:I
    .restart local v18       #option:I
    .restart local v29       #windowPosition:Landroid/graphics/Rect;
    :cond_11
    const/high16 v32, 0x20

    and-int v32, v32, v18

    if-eqz v32, :cond_6

    .line 5828
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, -0x200001

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_5

    .line 5846
    :cond_12
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x80

    and-int v32, v32, v33

    if-nez v32, :cond_9

    .line 5847
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_6

    .line 5858
    :cond_13
    const/high16 v32, 0x200

    move/from16 v0, v32

    if-ne v14, v0, :cond_a

    .line 5867
    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x40

    and-int v32, v32, v33

    if-eqz v32, :cond_14

    const/high16 v32, 0x100

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 5870
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, 0x4c2000

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5871
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x100

    or-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_7

    .line 5873
    :cond_14
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 5877
    .local v7, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 5878
    .local v13, isFrontResumed:Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_15
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 5879
    .local v26, temp:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 5880
    const/4 v13, 0x1

    goto :goto_9

    .line 5882
    .end local v26           #temp:Lcom/android/server/am/ActivityRecord;
    :cond_16
    if-nez v13, :cond_a

    .line 5883
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_7

    .line 5915
    .end local v7           #frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #isFrontResumed:Z
    .end local v14           #mode:I
    .end local v16           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v17           #oldWindowMode:I
    .end local v29           #windowPosition:Landroid/graphics/Rect;
    :cond_17
    const/high16 v32, 0x80

    and-int v32, v32, v18

    if-eqz v32, :cond_18

    const/high16 v32, 0x10

    and-int v32, v32, v18

    if-nez v32, :cond_18

    .line 5916
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 5917
    :cond_18
    const/high16 v32, 0x20

    and-int v32, v32, v18

    if-eqz v32, :cond_19

    .line 5918
    move/from16 v0, v25

    if-ne v0, v10, :cond_e

    .line 5919
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 5921
    :cond_19
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v32

    const/high16 v33, 0x200

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 5922
    move/from16 v0, v25

    if-ne v0, v10, :cond_e

    and-int/lit8 v32, p4, 0x2

    if-eqz v32, :cond_e

    .line 5923
    if-eqz v8, :cond_1a

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 5924
    :cond_1a
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5925
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto/16 :goto_8

    .line 5935
    .end local v18           #option:I
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 5936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5942
    :cond_1c
    if-eqz p2, :cond_20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x1

    and-int v32, v32, v33

    if-eqz v32, :cond_20

    .line 5944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5946
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 5947
    .restart local v21       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v21, :cond_1d

    .line 5948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5950
    :cond_1d
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5955
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5957
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1e

    .line 5958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5961
    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1f

    .line 5962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5970
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 5971
    const/16 v32, 0x7532

    move/from16 v0, v32

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_1

    .line 5952
    :cond_20
    const/16 v32, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_a
.end method

.method final needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 11
    .parameter "reason"
    .parameter "taskId"

    .prologue
    const/4 v7, 0x0

    const v10, -0x4c2001

    const/4 v8, 0x1

    .line 5702
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5728
    :cond_0
    :goto_0
    return v7

    .line 5706
    :cond_1
    if-eqz p1, :cond_0

    .line 5707
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowMode()I

    move-result v4

    .line 5708
    .local v4, reasonMode:I
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_2

    move v7, v8

    .line 5709
    goto :goto_0

    .line 5710
    :cond_2
    if-eqz v4, :cond_0

    .line 5711
    and-int/lit8 v6, v4, 0xf

    .line 5712
    .local v6, reasonZone:I
    and-int v5, v4, v10

    .line 5714
    .local v5, reasonOption:I
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5715
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p2, :cond_3

    .line 5716
    iget v9, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v9, 0xf

    .line 5717
    .local v1, currentZone:I
    iget v9, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v0, v9, v10

    .line 5718
    .local v0, currentOption:I
    if-eqz v6, :cond_4

    if-eq v1, v6, :cond_4

    move v7, v8

    .line 5719
    goto :goto_0

    .line 5720
    :cond_4
    if-eq v5, v0, :cond_0

    move v7, v8

    .line 5721
    goto :goto_0
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4847
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4848
    .local v0, N:I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 4891
    :cond_0
    return-object v4

    .line 4850
    :cond_1
    const/4 v4, 0x0

    .line 4853
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_7

    move v2, v5

    .line 4856
    .local v2, nowVisible:Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_2

    .line 4858
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    move v2, v5

    .line 4861
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 4862
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4866
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 4867
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4868
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 4869
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 4876
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4879
    :cond_3
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    if-eqz p1, :cond_6

    .line 4881
    if-nez v4, :cond_5

    .line 4882
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4884
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4885
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4886
    add-int/lit8 v0, v0, -0x1

    .line 4887
    add-int/lit8 v1, v1, -0x1

    .line 4861
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move v2, v6

    .line 4853
    goto :goto_0

    .restart local v2       #nowVisible:Z
    :cond_8
    move v2, v6

    .line 4858
    goto :goto_1
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .locals 21
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .parameter "pauseJIT"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 847
    if-eqz p4, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v17

    .line 851
    .local v17, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 854
    .end local v17           #config:Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 855
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 859
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 860
    .local v19, idx:I
    if-gez v19, :cond_1

    .line 861
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 866
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 867
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :catch_0
    move-exception v18

    .line 945
    .local v18, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_11

    .line 948
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 952
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "2nd-crash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 954
    const/4 v2, 0x0

    .line 1007
    .end local v18           #e:Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 848
    .end local v19           #idx:I
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 869
    .restart local v19       #idx:I
    :cond_3
    const/4 v10, 0x0

    .line 870
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 871
    .local v11, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 872
    :try_start_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 873
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 879
    :cond_4
    if-eqz p3, :cond_5

    .line 880
    const/16 v2, 0x7536

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 884
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_6

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 887
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 888
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 889
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 890
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 892
    const/4 v14, 0x0

    .line 893
    .local v14, profileFile:Ljava/lang/String;
    const/4 v15, 0x0

    .line 894
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 895
    .local v16, profileAutoStop:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_8

    .line 897
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 903
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 904
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 905
    if-eqz v15, :cond_9

    .line 907
    :try_start_2
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 913
    :cond_9
    :goto_2
    if-eqz p5, :cond_a

    .line 914
    :try_start_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const-wide/16 v3, 0x3

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->requestDelayJITCompilation(J)V

    .line 917
    :cond_a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_10

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 924
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 929
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_b

    .line 932
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 939
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 965
    .end local v20           #msg:Landroid/os/Message;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 966
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 967
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_d
    if-eqz p3, :cond_12

    .line 974
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 977
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 978
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 979
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 980
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_e

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 983
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 986
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 987
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1003
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_f

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1007
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 908
    :catch_1
    move-exception v18

    .line 909
    .local v18, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 917
    .end local v18           #e:Ljava/io/IOException;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 959
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    .local v18, e:Landroid/os/RemoteException;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 960
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 961
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 962
    throw v18

    .line 995
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v10       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :cond_12
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 996
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_4
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 5388
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 5389
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 5390
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 5396
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5397
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 5400
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5401
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 5405
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5406
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 5408
    :cond_0
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 5617
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5618
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5619
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5620
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5621
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5622
    return-void
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "taskId"
    .parameter "subTaskIndex"
    .parameter "taskRequired"

    .prologue
    const/4 v3, 0x0

    .line 6114
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 6115
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_1

    .line 6116
    if-eqz p3, :cond_0

    .line 6117
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6145
    :cond_0
    :goto_0
    return-object v3

    .line 6122
    :cond_1
    if-gez p2, :cond_3

    .line 6124
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 6125
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 6126
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeWindowInfo(I)V

    .line 6131
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_2
    iget v3, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 6132
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 6135
    :cond_3
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_4

    .line 6136
    if-eqz p3, :cond_0

    .line 6137
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6143
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 6144
    .local v2, subtask:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 6145
    iget-object v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 4352
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4353
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 4354
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4355
    if-eqz p2, :cond_0

    .line 4356
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4358
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4359
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4361
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 4362
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 4365
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4366
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 4367
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4368
    if-eqz p1, :cond_0

    .line 4369
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4371
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4372
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4374
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 4376
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_2

    .line 4377
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4378
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4380
    :cond_2
    return-void
.end method

.method public requestFakeOpaqueFull(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "requestFullOpaque"

    .prologue
    .line 6625
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 6626
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 6627
    .local v0, index:I
    if-gez v0, :cond_0

    .line 6628
    monitor-exit v3

    .line 6634
    :goto_0
    return-void

    .line 6630
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6631
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iput-boolean p2, v1, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    .line 6632
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6633
    monitor-exit v3

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 5057
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 5062
    .local v2, index:I
    if-gez v2, :cond_0

    .line 5063
    const/4 v0, 0x0

    .line 5068
    :goto_0
    return v0

    .line 5065
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, r:Lcom/android/server/am/ActivityRecord;
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 5067
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 5068
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resizeArrangedWindow(IILandroid/graphics/Rect;)V
    .locals 9
    .parameter "direction"
    .parameter "type"
    .parameter "rect"

    .prologue
    .line 4729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4731
    .local v2, origId:J
    const/16 v6, 0xf

    if-ne p2, v6, :cond_1

    .line 4733
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4734
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v7, 0xfffff0

    and-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4735
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4736
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4737
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4738
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4774
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4776
    return-void

    .line 4739
    :cond_1
    and-int/lit8 v6, p2, 0xf

    if-eqz v6, :cond_5

    .line 4740
    :try_start_1
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4741
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 4742
    .local v5, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4743
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4744
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 4745
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, -0x10

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4746
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v6, v6, 0xc

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4774
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 4747
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v5       #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3
    :try_start_2
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    .line 4748
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v6, -0x10

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4749
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v6, v6, 0x3

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_0

    .line 4753
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4755
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4756
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4757
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_1

    .line 4762
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_5
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4764
    .restart local v1       #mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 4765
    .restart local v5       #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4766
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4767
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4768
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 4063
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10480

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 4071
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4076
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 4081
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4085
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 4086
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4087
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 4091
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 4092
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4093
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 4097
    :cond_1
    if-eqz p4, :cond_2

    .line 4098
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4099
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 4105
    :cond_2
    return-object v6

    .line 4071
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 4072
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 4073
    .local v7, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 4099
    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .parameter "prev"

    .prologue
    .line 2028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "prev"
    .parameter "options"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2033
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_6

    .line 2036
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    .line 2037
    .local v4, resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v3, 0x0

    .line 2038
    .local v3, resumed:Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 2039
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->arrangedWindowStateLocked(Ljava/util/List;)V

    .line 2040
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2041
    .local v2, next:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2042
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_1

    .line 2043
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v2, v7, v10, v10}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 2046
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2049
    .end local v2           #next:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez v3, :cond_4

    .line 2050
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    .line 2051
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2052
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 2053
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 2054
    .local v6, winInfo:Landroid/os/Bundle;
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    const-string v7, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2055
    const/4 v7, 0x0

    invoke-virtual {p0, v9, v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2057
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2064
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v3           #resumed:Z
    .end local v4           #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    .end local v6           #winInfo:Landroid/os/Bundle;
    :cond_4
    :goto_1
    return v3

    .line 2060
    .restart local v3       #resumed:Z
    .restart local v4       #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_5
    invoke-virtual {p0, p1, p2, v9, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_1

    .line 2064
    .end local v3           #resumed:Z
    .end local v4           #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    invoke-virtual {p0, p1, p2, v9, v9}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .locals 31
    .parameter "prev"
    .parameter "options"
    .parameter "next"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2070
    .local p4, resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_0

    .line 2071
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p3

    .line 2077
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v30, v0

    .line 2078
    .local v30, userLeaving:Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2080
    if-nez p3, :cond_1

    .line 2083
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1

    .line 2084
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    .line 2529
    :goto_0
    return v3

    .line 2089
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2092
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_8

    .line 2098
    const/16 v16, 0x1

    .line 2099
    .local v16, bExecuteTransition:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_4

    .line 2100
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 2101
    .local v25, resume:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_3

    .line 2102
    const/16 v16, 0x0

    .line 2109
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #resume:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v16, :cond_5

    .line 2110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2112
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2116
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_c

    .line 2117
    const/16 v28, 0x0

    .line 2118
    .local v28, startPausing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v26

    .line 2119
    .local v26, resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 2120
    .local v27, rs:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2122
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2123
    const/16 v28, 0x1

    goto :goto_1

    .line 2092
    .end local v16           #bExecuteTransition:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v26           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v27           #rs:Lcom/android/server/am/ActivityRecord;
    .end local v28           #startPausing:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_2

    .line 2145
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v3, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-ne v3, v0, :cond_e

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_e

    .line 2152
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2154
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2155
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2128
    .restart local v16       #bExecuteTransition:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v26       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v28       #startPausing:Z
    :cond_b
    if-nez v28, :cond_c

    .line 2129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 2136
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v26           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v28           #startPausing:Z
    :cond_c
    if-eqz p1, :cond_d

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_d

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_d

    .line 2137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2140
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2160
    .end local v16           #bExecuteTransition:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2162
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2165
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2172
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_f

    .line 2173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2175
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2178
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_10

    .line 2180
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2217
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_13

    .line 2218
    const/16 v28, 0x0

    .line 2219
    .restart local v28       #startPausing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v26

    .line 2220
    .restart local v26       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 2221
    .restart local v27       #rs:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2223
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2224
    const/16 v28, 0x1

    goto :goto_2

    .line 2227
    .end local v27           #rs:Lcom/android/server/am/ActivityRecord;
    :cond_12
    if-eqz v28, :cond_14

    .line 2228
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2231
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v26           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v28           #startPausing:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_14

    .line 2233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 2234
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2241
    :cond_14
    :try_start_0
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_15

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2252
    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    .line 2253
    .local v20, last:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v3, :cond_17

    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_17

    .line 2254
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_17

    .line 2259
    :cond_16
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "no-history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2264
    :cond_17
    if-eqz p1, :cond_18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_18

    .line 2265
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_1f

    if-eqz p3, :cond_1f

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_1f

    .line 2266
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    :cond_18
    :goto_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2308
    :goto_5
    const/16 v24, 0x0

    .line 2309
    .local v24, noAnim:Z
    if-eqz p1, :cond_25

    .line 2310
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_22

    .line 2313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2321
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2352
    :cond_19
    :goto_7
    if-nez v24, :cond_27

    .line 2353
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2358
    :goto_8
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2f

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2f

    .line 2362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2365
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    .line 2368
    .local v21, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v22, v0

    .line 2370
    .local v22, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2373
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2374
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2375
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2376
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1a

    .line 2377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2379
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2380
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2384
    const/16 v29, 0x0

    .line 2385
    .local v29, updated:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1c

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2387
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_9
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v17

    .line 2390
    .local v17, config:Landroid/content/res/Configuration;
    if-eqz v17, :cond_1b

    .line 2391
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2393
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v29

    .line 2394
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2396
    .end local v17           #config:Landroid/content/res/Configuration;
    :cond_1c
    if-nez v29, :cond_2a

    .line 2403
    const/16 v23, 0x0

    .line 2404
    .local v23, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_29

    .line 2405
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 2413
    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_1d

    .line 2415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2419
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1e

    .line 2420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2423
    :cond_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2426
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2279
    .end local v21           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v22           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v23           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v24           #noAnim:Z
    .end local v29           #updated:Z
    :cond_1f
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_18

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_4

    .line 2300
    :catch_0
    move-exception v18

    .line 2301
    .local v18, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2317
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    .restart local v24       #noAnim:Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_21

    const/16 v3, 0x2007

    :goto_b
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_6

    :cond_21
    const/16 v3, 0x2009

    goto :goto_b

    .line 2326
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2327
    const/16 v24, 0x1

    .line 2328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2331
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_24

    const/16 v3, 0x1006

    :goto_c
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    :cond_24
    const/16 v3, 0x1008

    goto :goto_c

    .line 2340
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 2343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2344
    const/16 v24, 0x1

    .line 2345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2348
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x1006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2355
    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_8

    .line 2387
    .restart local v21       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v29       #updated:Z
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 2394
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2407
    .restart local v23       #nextNext:Lcom/android/server/am/ActivityRecord;
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    goto/16 :goto_a

    .line 2431
    .end local v23           #nextNext:Lcom/android/server/am/ActivityRecord;
    :cond_2a
    :try_start_4
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2432
    .local v15, a:Ljava/util/ArrayList;
    if-eqz v15, :cond_2b

    .line 2433
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2434
    .local v14, N:I
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2b

    if-lez v14, :cond_2b

    .line 2438
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2442
    .end local v14           #N:I
    :cond_2b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_2c

    .line 2443
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2446
    :cond_2c
    const/16 v3, 0x7537

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2450
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2451
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2452
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2453
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2489
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2490
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2502
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2503
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2504
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2529
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v21           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v22           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v29           #updated:Z
    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2458
    .restart local v21       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v29       #updated:Z
    :catch_1
    move-exception v18

    .line 2462
    .local v18, e:Ljava/lang/Exception;
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2463
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2464
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_2e

    .line 2466
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2482
    :cond_2d
    :goto_e
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2483
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2468
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2d

    .line 2470
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_2d

    .line 2472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_e

    .line 2491
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v15       #a:Ljava/util/ArrayList;
    :catch_2
    move-exception v18

    .line 2494
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2495
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "resume-exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2497
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2508
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v21           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v22           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v29           #updated:Z
    :cond_2f
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_31

    .line 2509
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2526
    :cond_30
    :goto_f
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_d

    .line 2513
    :cond_31
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_30

    .line 2515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_f

    .line 2299
    .end local v24           #noAnim:Z
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 2244
    .end local v20           #last:Lcom/android/server/am/ActivityRecord;
    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 3
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5426
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5427
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5428
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5429
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 4895
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4896
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4897
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4898
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 1173
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-object v3

    .line 1177
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1178
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1179
    .local v2, w:I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1180
    .local v0, h:I
    if-gez v2, :cond_2

    .line 1188
    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1190
    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1195
    :cond_2
    if-lez v2, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4385
    if-lez p1, :cond_0

    .line 4386
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4393
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3

    .line 4395
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4396
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4398
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4406
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 4393
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p2, :cond_1

    .line 4405
    :cond_3
    :goto_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0

    .line 4400
    :catch_0
    move-exception v6

    .line 4401
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 9
    .parameter "token"
    .parameter "winInfo"

    .prologue
    const/4 v2, 0x1

    .line 4531
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4532
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4533
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4534
    monitor-exit v6

    .line 4552
    :goto_0
    return-void

    .line 4536
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4538
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4539
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 4540
    .local v3, oldWinInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.STAY_RESUME"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eq v5, v7, :cond_2

    .line 4542
    .local v2, needsResumeTop:Z
    :goto_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v7, p2}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4544
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4548
    if-eqz v2, :cond_1

    .line 4549
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4551
    :cond_1
    monitor-exit v6

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v2           #needsResumeTop:Z
    .end local v3           #oldWinInfo:Landroid/os/Bundle;
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4540
    .restart local v0       #index:I
    .restart local v1       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v3       #oldWinInfo:Landroid/os/Bundle;
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setWindowMode(Landroid/os/IBinder;IZZ)V
    .locals 23
    .parameter "token"
    .parameter "windowMode"
    .parameter "allInTask"
    .parameter "bResume"

    .prologue
    .line 4418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4419
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    .line 4420
    .local v4, index:I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v7

    .line 4421
    .local v7, mw:Lcom/android/server/am/MultiWindowManagerService;
    if-gez v4, :cond_0

    .line 4422
    monitor-exit v20

    .line 4495
    :goto_0
    return-void

    .line 4425
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 4426
    .local v13, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 4428
    .local v15, r:Lcom/android/server/am/ActivityRecord;
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v12

    .line 4429
    .local v12, oldOption:I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    .line 4430
    .local v9, newOption:I
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v11

    .line 4431
    .local v11, oldMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    .line 4435
    .local v8, newMode:I
    const/high16 v19, 0x100

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    const/high16 v19, 0x200

    move/from16 v0, v19

    if-ne v8, v0, :cond_7

    const/4 v5, 0x1

    .line 4439
    .local v5, isModeChanged:Z
    :goto_1
    const/high16 v19, 0x80

    and-int v19, v19, v12

    if-eqz v19, :cond_8

    const/high16 v19, 0x80

    and-int v19, v19, v9

    if-nez v19, :cond_8

    const/4 v6, 0x1

    .line 4442
    .local v6, isPinupReleased:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x3c

    if-eqz v19, :cond_9

    const/16 v16, 0x1

    .line 4444
    .local v16, splitedModes:Z
    :goto_3
    if-eqz v6, :cond_1

    if-nez v16, :cond_2

    :cond_1
    if-eqz v5, :cond_4

    .line 4445
    :cond_2
    const/16 v21, 0x0

    if-nez v5, :cond_a

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v19

    or-int p2, p2, v19

    .line 4447
    and-int/lit8 v18, p2, 0xf

    .line 4448
    .local v18, zoneInfo:I
    if-eqz v18, :cond_3

    .line 4449
    new-instance v10, Landroid/content/Intent;

    const-string v19, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4450
    .local v10, notifyFocusIntent:Landroid/content/Intent;
    const-string v19, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4454
    .end local v10           #notifyFocusIntent:Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4457
    .end local v18           #zoneInfo:I
    :cond_4
    const/high16 v19, 0x100

    move/from16 v0, v19

    if-ne v8, v0, :cond_5

    .line 4458
    const v19, 0x4c2000

    and-int p2, p2, v19

    .line 4459
    const/high16 v19, 0x100

    or-int p2, p2, v19

    .line 4461
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 4462
    .local v17, winInfo:Landroid/os/Bundle;
    if-eqz v17, :cond_5

    .line 4463
    const-string v19, "android.intent.extra.WINDOW_LAST_PINUP"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4464
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4469
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_5
    if-eqz p3, :cond_b

    .line 4470
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4476
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4478
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4481
    if-eqz p4, :cond_6

    .line 4482
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4485
    if-eq v11, v8, :cond_6

    .line 4486
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    .line 4491
    :cond_6
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setWindowMode(I)V

    .line 4493
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4494
    monitor-exit v20

    goto/16 :goto_0

    .end local v4           #index:I
    .end local v5           #isModeChanged:Z
    .end local v6           #isPinupReleased:Z
    .end local v7           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v8           #newMode:I
    .end local v9           #newOption:I
    .end local v11           #oldMode:I
    .end local v12           #oldOption:I
    .end local v13           #origId:J
    .end local v15           #r:Lcom/android/server/am/ActivityRecord;
    .end local v16           #splitedModes:Z
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 4435
    .restart local v4       #index:I
    .restart local v7       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v8       #newMode:I
    .restart local v9       #newOption:I
    .restart local v11       #oldMode:I
    .restart local v12       #oldOption:I
    .restart local v13       #origId:J
    .restart local v15       #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4439
    .restart local v5       #isModeChanged:Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 4442
    .restart local v6       #isPinupReleased:Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 4445
    .restart local v16       #splitedModes:Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 4472
    :cond_b
    :try_start_1
    move/from16 v0, p2

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 790
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 791
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 792
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 23
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 4274
    if-nez p3, :cond_0

    .line 4275
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4277
    :cond_0
    if-nez p4, :cond_1

    .line 4278
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4280
    :cond_1
    move-object/from16 v0, p3

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 4281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4284
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 4287
    .local v16, outActivity:[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_3

    .line 4288
    const/4 v11, -0x1

    .line 4295
    .local v11, callingPid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4297
    .local v19, origId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4299
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    .line 4300
    aget-object v18, p3, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4301
    .local v18, intent:Landroid/content/Intent;
    if-nez v18, :cond_5

    move-object/from16 v2, v18

    .line 4299
    .end local v18           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 4289
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #callingPid:I
    .end local v17           #i:I
    .end local v19           #origId:J
    :cond_3
    if-nez p1, :cond_4

    .line 4290
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4291
    .restart local v11       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 4293
    .end local v11           #callingPid:I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11       #callingPid:I
    goto :goto_0

    .line 4306
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #origId:J
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4342
    .end local v18           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4344
    .end local v17           #i:I
    :catchall_1
    move-exception v1

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4310
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    .line 4313
    .local v15, componentSpecified:Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4316
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    aget-object v3, p4, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 4319
    .local v7, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 4321
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 4323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4310
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v15           #componentSpecified:Z
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 4328
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 4329
    move-object/from16 v14, p6

    .line 4333
    .local v14, theseOptions:Landroid/os/Bundle;
    :goto_4
    aget-object v6, p4, v17

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p5

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    .line 4336
    .local v21, res:I
    if-gez v21, :cond_a

    .line 4337
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4344
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4347
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :goto_5
    return v21

    .line 4331
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #theseOptions:Landroid/os/Bundle;
    goto :goto_4

    .line 4340
    .restart local v21       #res:I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v16, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v16, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p5, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x0

    goto :goto_6

    .line 4342
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :cond_c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4344
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4347
    const/16 v21, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 58
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "startFlags"
    .parameter "options"
    .parameter "componentSpecified"
    .parameter "outActivity"

    .prologue
    .line 3251
    const/16 v28, 0x0

    .line 3254
    .local v28, err:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, 0x10104000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_0

    .line 3257
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3261
    :cond_0
    const/16 v23, 0x0

    .line 3262
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    .line 3263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 3264
    if-eqz v23, :cond_7

    .line 3265
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 3266
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 3279
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v42

    .line 3280
    .local v42, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v42

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3283
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 3284
    .local v24, cmp:Landroid/content/ComponentName;
    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3286
    :try_start_0
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v49

    .line 3287
    .local v49, rp:Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v49, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3288
    const/16 v33, 0x0

    .line 3289
    .local v33, isActivityAllowed:Z
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3290
    .local v21, activity:Ljava/lang/String;
    if-nez v21, :cond_2

    .line 3291
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 3293
    :cond_2
    sget-object v22, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v22, arr$:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v31, 0x0

    .local v31, i$:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    aget-object v29, v22, v31

    .line 3294
    .local v29, exception:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3295
    const/16 v33, 0x1

    .line 3299
    .end local v29           #exception:Ljava/lang/String;
    :cond_3
    if-eqz v33, :cond_9

    .line 3300
    const/high16 v3, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3353
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v31           #i$:I
    .end local v33           #isActivityAllowed:Z
    .end local v38           #len$:I
    .end local v49           #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :cond_4
    :goto_2
    invoke-static/range {v42 .. v42}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3356
    if-nez v28, :cond_5

    .line 3357
    if-eqz p4, :cond_f

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v54

    .line 3358
    .local v54, userId:I
    :goto_3
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START {"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " u="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "} from pid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v23, :cond_10

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :try_start_1
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_5

    .line 3371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3379
    .end local v54           #userId:I
    :cond_5
    :goto_6
    const/16 v50, 0x0

    .line 3380
    .local v50, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3381
    .local v5, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_6

    .line 3382
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v32

    .line 3385
    .local v32, index:I
    if-ltz v32, :cond_6

    .line 3386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    .end local v50           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 3387
    .restart local v50       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_6

    move-object/from16 v0, v50

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_6

    .line 3388
    move-object/from16 v5, v50

    .line 3393
    .end local v32           #index:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v37

    .line 3395
    .local v37, launchFlags:I
    const/high16 v3, 0x200

    and-int v3, v3, v37

    if-eqz v3, :cond_13

    if-eqz v50, :cond_13

    .line 3399
    if-ltz p7, :cond_12

    .line 3400
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3401
    const/4 v3, -0x3

    .line 3651
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v37           #launchFlags:I
    .end local v50           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :goto_7
    return v3

    .line 3268
    .end local v24           #cmp:Landroid/content/ComponentName;
    .end local v42           #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :cond_7
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") when starting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const/16 v28, -0x4

    goto/16 :goto_0

    .line 3293
    .restart local v21       #activity:Ljava/lang/String;
    .restart local v22       #arr$:[Ljava/lang/String;
    .restart local v24       #cmp:Landroid/content/ComponentName;
    .restart local v29       #exception:Ljava/lang/String;
    .restart local v31       #i$:I
    .restart local v33       #isActivityAllowed:Z
    .restart local v38       #len$:I
    .restart local v42       #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v49       #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 3302
    .end local v29           #exception:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v49

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 3303
    invoke-static/range {v42 .. v42}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3304
    const/4 v3, 0x0

    goto :goto_7

    .line 3307
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v31           #i$:I
    .end local v33           #isActivityAllowed:Z
    .end local v38           #len$:I
    .end local v49           #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :catch_0
    move-exception v27

    .line 3308
    .local v27, e:Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3311
    .end local v27           #e:Ljava/lang/Exception;
    :cond_a
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3314
    :try_start_3
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v35

    .line 3316
    .local v35, km:Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v35, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3317
    invoke-static/range {v42 .. v42}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3318
    const/4 v3, 0x0

    goto :goto_7

    .line 3320
    .end local v35           #km:Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_1
    move-exception v27

    .line 3321
    .restart local v27       #e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3324
    .end local v27           #e:Ljava/lang/Exception;
    :cond_b
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3326
    :try_start_4
    const-string v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v46

    .line 3327
    .local v46, pwdPolicy:Landroid/app/enterprise/IPasswordPolicy;
    if-eqz v46, :cond_4

    invoke-interface/range {v46 .. v46}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_4

    .line 3328
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v4, v7, v8}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v39

    .line 3329
    .local v39, list:Ljava/util/List;
    if-eqz v39, :cond_4

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3330
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v53

    .line 3331
    .local v53, topActivity:Ljava/lang/String;
    const/16 v33, 0x0

    .line 3332
    .restart local v33       #isActivityAllowed:Z
    const/16 v34, 0x0

    .line 3333
    .local v34, isTopActivityException:Z
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 3334
    .restart local v21       #activity:Ljava/lang/String;
    sget-object v22, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v22       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v38, v0

    .restart local v38       #len$:I
    const/16 v31, 0x0

    .restart local v31       #i$:I
    :goto_8
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    aget-object v29, v22, v31

    .line 3335
    .restart local v29       #exception:Ljava/lang/String;
    if-eqz v53, :cond_c

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3336
    const/16 v34, 0x1

    .line 3338
    :cond_c
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3339
    const/16 v33, 0x1

    .line 3343
    .end local v29           #exception:Ljava/lang/String;
    :cond_d
    if-eqz v34, :cond_4

    if-nez v33, :cond_4

    .line 3344
    invoke-static/range {v42 .. v42}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3345
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3334
    .restart local v29       #exception:Ljava/lang/String;
    :cond_e
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 3349
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v29           #exception:Ljava/lang/String;
    .end local v31           #i$:I
    .end local v33           #isActivityAllowed:Z
    .end local v34           #isTopActivityException:Z
    .end local v38           #len$:I
    .end local v39           #list:Ljava/util/List;
    .end local v46           #pwdPolicy:Landroid/app/enterprise/IPasswordPolicy;
    .end local v53           #topActivity:Ljava/lang/String;
    :catch_2
    move-exception v27

    .line 3350
    .restart local v27       #e:Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3357
    .end local v27           #e:Ljava/lang/Exception;
    :cond_f
    const/16 v54, 0x0

    goto/16 :goto_3

    .restart local v54       #userId:I
    :cond_10
    move/from16 v3, p8

    .line 3358
    goto/16 :goto_4

    .line 3365
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 3403
    .end local v54           #userId:I
    .restart local v5       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #launchFlags:I
    .restart local v50       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, v50

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3404
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 3405
    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 3406
    const/4 v3, 0x0

    move-object/from16 v0, v50

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3407
    if-eqz v5, :cond_13

    .line 3408
    move-object/from16 v0, v50

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 3413
    :cond_13
    if-nez v28, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_14

    .line 3416
    const/16 v28, -0x1

    .line 3419
    :cond_14
    if-nez v28, :cond_15

    if-nez p4, :cond_15

    .line 3422
    const/16 v28, -0x2

    .line 3425
    :cond_15
    if-eqz v28, :cond_17

    .line 3426
    if-eqz v5, :cond_16

    .line 3427
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3431
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3432
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v3, v28

    .line 3433
    goto/16 :goto_7

    .line 3436
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v52

    .line 3438
    .local v52, startAnyPerm:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v25

    .line 3440
    .local v25, componentPerm:I
    if-eqz v52, :cond_1a

    if-eqz v25, :cond_1a

    .line 3441
    if-eqz v5, :cond_18

    .line 3442
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3446
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3448
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_19

    .line 3449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 3459
    .local v40, msg:Ljava/lang/String;
    :goto_9
    const-string v3, "ActivityManager"

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v40

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3454
    .end local v40           #msg:Ljava/lang/String;
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .restart local v40       #msg:Ljava/lang/String;
    goto :goto_9

    .line 3463
    .end local v40           #msg:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1d

    .line 3464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_1d

    .line 3465
    const/16 v20, 0x0

    .line 3469
    .local v20, abort:Z
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v55

    .line 3470
    .local v55, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v3

    if-nez v3, :cond_1c

    const/16 v20, 0x1

    .line 3476
    .end local v55           #watchIntent:Landroid/content/Intent;
    :goto_a
    if-eqz v20, :cond_1d

    .line 3477
    if-eqz v5, :cond_1b

    .line 3478
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3484
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3485
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3486
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3470
    .restart local v55       #watchIntent:Landroid/content/Intent;
    :cond_1c
    const/16 v20, 0x0

    goto :goto_a

    .line 3472
    .end local v55           #watchIntent:Landroid/content/Intent;
    :catch_3
    move-exception v27

    .line 3473
    .local v27, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_a

    .line 3495
    .end local v20           #abort:Z
    .end local v27           #e:Landroid/os/RemoteException;
    :cond_1d
    const/16 v45, 0x0

    .line 3498
    .local v45, parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz v50, :cond_29

    .line 3499
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_1e

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from sourceRecord"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :cond_1e
    move-object/from16 v45, v50

    .line 3508
    :cond_1f
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v19

    .line 3509
    .local v19, windowMode:I
    if-nez v19, :cond_2f

    .line 3510
    if-eqz v45, :cond_2e

    .line 3512
    const/16 v30, 0x0

    .line 3513
    .local v30, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v30, v3, -0x1

    :goto_c
    if-ltz v30, :cond_20

    .line 3514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_2b

    .line 3523
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 3525
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    if-eqz v3, :cond_22

    .line 3526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getWindowMode()I

    move-result v19

    .line 3543
    .end local v30           #i:I
    :cond_22
    :goto_d
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    if-nez v3, :cond_23

    .line 3544
    const/high16 v19, 0x100

    .line 3547
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 3548
    const/high16 v19, 0x100

    .line 3551
    :cond_24
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_26

    .line 3552
    if-nez v45, :cond_25

    .line 3553
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v45

    .line 3555
    :cond_25
    if-eqz v45, :cond_26

    .line 3556
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zonePolicy(I)I

    move-result v57

    .line 3557
    .local v57, zonePolicy:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit8 v3, v3, 0x3c

    if-eqz v3, :cond_30

    const/16 v51, 0x1

    .line 3559
    .local v51, splitedModes:Z
    :goto_e
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_34

    .line 3560
    if-eqz v51, :cond_31

    and-int/lit8 v3, v19, 0xf

    if-nez v3, :cond_31

    .line 3562
    move-object/from16 v0, v45

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v19, v19, v3

    .line 3588
    .end local v51           #splitedModes:Z
    .end local v57           #zonePolicy:I
    :cond_26
    :goto_f
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v8, p0

    move-object/from16 v9, v23

    move/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p12

    invoke-direct/range {v6 .. v19}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZI)V

    .line 3593
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p13, :cond_27

    .line 3594
    const/4 v3, 0x0

    aput-object v6, p13, v3

    .line 3597
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_38

    .line 3600
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v47

    .line 3601
    .local v47, resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    const/16 v26, 0x1

    .line 3602
    .local v26, doPending:Z
    :goto_10
    if-nez v26, :cond_36

    .line 3603
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_28
    :goto_11
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/ActivityRecord;

    .line 3604
    .local v48, resumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_28

    .line 3605
    const/16 v26, 0x1

    goto :goto_11

    .line 3501
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #windowMode:I
    .end local v26           #doPending:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v47           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v48           #resumedActivity:Lcom/android/server/am/ActivityRecord;
    :cond_29
    if-eqz v23, :cond_1f

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 3503
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_2a

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from callerApp"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_2a
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    .end local v45           #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v45, Lcom/android/server/am/ActivityRecord;

    .restart local v45       #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_b

    .line 3516
    .restart local v19       #windowMode:I
    .restart local v30       #i:I
    :cond_2b
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 3513
    :cond_2c
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_c

    .line 3529
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    goto/16 :goto_d

    .line 3532
    .end local v30           #i:I
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3533
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_22

    .line 3534
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3535
    iget v3, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    .line 3536
    iget v3, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v19, v19, v3

    goto/16 :goto_d

    .line 3540
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2f
    const v3, 0x8000

    or-int v19, v19, v3

    goto/16 :goto_d

    .line 3557
    .restart local v57       #zonePolicy:I
    :cond_30
    const/16 v51, 0x0

    goto/16 :goto_e

    .line 3565
    .restart local v51       #splitedModes:Z
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v43

    .line 3566
    .local v43, overridePosition:Landroid/graphics/Rect;
    if-eqz v43, :cond_32

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 3567
    :cond_32
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v41

    .line 3568
    .local v41, mw:Lcom/android/server/am/MultiWindowManagerService;
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v56

    .line 3569
    .local v56, winInfo:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 3570
    .local v36, lastSize:Landroid/graphics/Rect;
    if-nez v36, :cond_33

    .line 3571
    const-string v3, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v36

    .end local v36           #lastSize:Landroid/graphics/Rect;
    check-cast v36, Landroid/graphics/Rect;

    .line 3573
    .restart local v36       #lastSize:Landroid/graphics/Rect;
    :cond_33
    const-string v3, "android.intent.extra.WINDOW_POSITION"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_f

    .line 3576
    .end local v36           #lastSize:Landroid/graphics/Rect;
    .end local v41           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v43           #overridePosition:Landroid/graphics/Rect;
    .end local v56           #winInfo:Landroid/os/Bundle;
    :cond_34
    const/4 v3, 0x2

    move/from16 v0, v57

    if-ne v0, v3, :cond_26

    .line 3577
    if-eqz v51, :cond_26

    and-int/lit8 v3, v19, 0xf

    if-nez v3, :cond_26

    .line 3578
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v41

    .line 3579
    .restart local v41       #mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    or-int v19, v19, v3

    goto/16 :goto_f

    .line 3601
    .end local v41           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v51           #splitedModes:Z
    .end local v57           #zonePolicy:I
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v47       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_35
    const/16 v26, 0x0

    goto/16 :goto_10

    .line 3611
    .restart local v26       #doPending:Z
    :cond_36
    if-eqz v26, :cond_37

    .line 3613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 3614
    new-instance v44, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v44 .. v44}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 3615
    .local v44, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v44

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 3616
    move-object/from16 v0, v50

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 3617
    move/from16 v0, p10

    move-object/from16 v1, v44

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 3618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3620
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3621
    const/4 v3, 0x4

    goto/16 :goto_7

    .line 3625
    .end local v44           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_3a

    .line 3631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3636
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 3639
    .end local v26           #doPending:Z
    .end local v47           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_38
    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object v8, v6

    move-object/from16 v9, v50

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v28

    .line 3642
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 3648
    :goto_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_39
    move/from16 v3, v28

    .line 3651
    goto/16 :goto_7

    .line 3633
    .restart local v26       #doPending:Z
    .restart local v47       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_12

    .line 3642
    .end local v26           #doPending:Z
    .end local v47           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_39

    goto :goto_13

    .line 3373
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #windowMode:I
    .end local v25           #componentPerm:I
    .end local v37           #launchFlags:I
    .end local v45           #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    .end local v50           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    .end local v52           #startAnyPerm:I
    .restart local v54       #userId:I
    :catch_4
    move-exception v3

    goto/16 :goto_6
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 35
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "outResult"
    .parameter "config"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 4114
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4117
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v20, 0x1

    .line 4120
    .local v20, componentSpecified:Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p3
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p14

    .line 4123
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 4125
    .local v12, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4126
    const/16 p14, 0x0

    .line 4128
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 4130
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .local v22, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4132
    if-ltz p2, :cond_a

    .line 4133
    const/16 v16, -0x1

    .line 4141
    .local v16, callingPid:I
    :goto_1
    if-eqz p12, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 4146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v27

    .line 4148
    .local v27, origId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_12

    if-eqz v22, :cond_12

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_12

    .line 4152
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 4156
    :cond_2
    move/from16 v31, v16

    .line 4157
    .local v31, realCallingPid:I
    move/from16 v7, p2

    .line 4158
    .local v7, realCallingUid:I
    if-eqz p1, :cond_3

    .line 4159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 4160
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_d

    .line 4161
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v31, v0

    .line 4162
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4172
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    new-array v11, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v11, v2

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v12, v2

    const/high16 v13, 0x5000

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v33

    .line 4178
    .local v33, target:Landroid/content/IIntentSender;
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 4179
    .local v26, newIntent:Landroid/content/Intent;
    if-ltz p7, :cond_4

    .line 4181
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4183
    :cond_4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 4187
    .local v25, hist:Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4189
    const-string v2, "cur_task"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4192
    .end local v25           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v2, "new_app"

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4194
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4195
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4197
    move-object/from16 p3, v26

    .line 4198
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    const/16 p4, 0x0

    .line 4199
    const/16 p1, 0x0

    .line 4200
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 4201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 4202
    const/16 v20, 0x1

    .line 4204
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p3

    move/from16 v1, p14

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 4209
    .local v30, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v30, :cond_e

    move-object/from16 v0, v30

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4210
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v12

    .line 4218
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    :goto_4
    const/16 v21, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v17, p2

    move/from16 v18, p8

    move-object/from16 v19, p13

    :try_start_4
    invoke-virtual/range {v8 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 4222
    .local v32, res:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_6

    .line 4227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 4232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 4235
    :cond_6
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    if-eqz p11, :cond_8

    .line 4238
    move/from16 v0, v32

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 4239
    if-nez v32, :cond_f

    .line 4240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4243
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4246
    :goto_5
    :try_start_6
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    .line 4267
    :cond_8
    :goto_6
    monitor-exit v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v32           #res:I
    :goto_7
    return v32

    .line 4117
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v20           #componentSpecified:Z
    .end local v27           #origId:J
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 4134
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v20       #componentSpecified:Z
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    if-nez p1, :cond_b

    .line 4135
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 4136
    .restart local v16       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_1

    .line 4138
    .end local v16           #callingPid:I
    :cond_b
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16       #callingPid:I
    goto/16 :goto_1

    .line 4141
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 4164
    .restart local v7       #realCallingUid:I
    .restart local v23       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    :cond_d
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4168
    const/16 v32, -0x4

    monitor-exit v34
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_7

    .line 4209
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v33       #target:Landroid/content/IIntentSender;
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4211
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v24

    move-object/from16 v12, v22

    .line 4212
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    .local v24, e:Landroid/os/RemoteException;
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 4247
    .end local v7           #realCallingUid:I
    .end local v24           #e:Landroid/os/RemoteException;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v32       #res:I
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_8

    .line 4248
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 4249
    .local v29, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_10

    .line 4250
    const/4 v2, 0x0

    move-object/from16 v0, p11

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4251
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4252
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4253
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 4268
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    :catchall_0
    move-exception v2

    :goto_9
    monitor-exit v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 4255
    .restart local v16       #callingPid:I
    .restart local v27       #origId:J
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :cond_10
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4259
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 4262
    :goto_a
    :try_start_b
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_11

    goto/16 :goto_6

    .line 4268
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_9

    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v7       #realCallingUid:I
    .restart local v16       #callingPid:I
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_9

    .line 4260
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 4244
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 4211
    .end local v32           #res:I
    .restart local v7       #realCallingUid:I
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catch_3
    move-exception v24

    goto :goto_8

    .end local v7           #realCallingUid:I
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_12
    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 29
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 3667
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    .line 3668
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 3669
    .local v13, callingUid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v27, v0

    .line 3671
    .local v27, userId:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v19

    .line 3672
    .local v19, launchFlags:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_0

    .line 3673
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3676
    .local v25, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_0
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getSupportLaunchFlag(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    or-int v19, v19, v3

    .line 3681
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/high16 v3, 0x4

    and-int v3, v3, v19

    if-nez v3, :cond_f

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 3688
    if-nez p4, :cond_1

    .line 3689
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3692
    :cond_1
    const/high16 v3, 0x100

    and-int v3, v3, v19

    if-eqz v3, :cond_10

    move-object/from16 v21, p1

    .line 3699
    .local v21, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_2
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 3700
    move-object/from16 v14, p2

    .line 3701
    .local v14, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_2

    .line 3702
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 3704
    :cond_2
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3706
    and-int/lit8 p3, p3, -0x2

    .line 3710
    .end local v14           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez p2, :cond_11

    .line 3713
    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-nez v3, :cond_4

    .line 3714
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    .line 3730
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_5

    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_5

    .line 3736
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3740
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3743
    :cond_5
    const/4 v11, 0x0

    .line 3744
    .local v11, addingToTask:Z
    const/16 v20, 0x0

    .line 3745
    .local v20, movedHome:Z
    const/16 v23, 0x0

    .line 3746
    .local v23, reuseTask:Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_6

    const/high16 v3, 0x800

    and-int v3, v3, v19

    if-eqz v3, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_24

    .line 3753
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_24

    .line 3758
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3761
    .restart local v25       #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v25, :cond_24

    .line 3762
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_8

    .line 3767
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3775
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 3776
    .local v15, curTop:Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_9

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_a

    :cond_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3780
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3781
    if-eqz p2, :cond_b

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_15

    :cond_b
    const/4 v12, 0x1

    .line 3783
    .local v12, callerAtFront:Z
    :goto_5
    if-eqz v12, :cond_c

    .line 3786
    const/16 v20, 0x1

    .line 3787
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3788
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3789
    const/16 p5, 0x0

    .line 3794
    .end local v12           #callerAtFront:Z
    :cond_c
    const/high16 v3, 0x20

    and-int v3, v3, v19

    if-eqz v3, :cond_d

    .line 3795
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3797
    :cond_d
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_17

    .line 3802
    if-eqz p4, :cond_16

    .line 3803
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3807
    :goto_6
    const/4 v3, 0x1

    .line 4055
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_7
    return v3

    .line 3673
    .end local v11           #addingToTask:Z
    .end local v20           #movedHome:Z
    .end local v21           #notTop:Lcom/android/server/am/ActivityRecord;
    .end local v23           #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    goto/16 :goto_0

    .line 3681
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3692
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 3718
    .restart local v21       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_11
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 3722
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    goto/16 :goto_3

    .line 3723
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 3727
    :cond_13
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    goto/16 :goto_3

    .line 3758
    .restart local v11       #addingToTask:Z
    .restart local v20       #movedHome:Z
    .restart local v23       #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_14
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    goto/16 :goto_4

    .line 3781
    .restart local v15       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_15
    const/4 v12, 0x0

    goto :goto_5

    .line 3805
    :cond_16
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_6

    .line 3809
    :cond_17
    const v3, 0x10008000

    and-int v3, v3, v19

    const v4, 0x10008000

    if-ne v3, v4, :cond_19

    .line 3815
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    .line 3816
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 3817
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3887
    :cond_18
    :goto_8
    if-nez v11, :cond_24

    if-nez v23, :cond_24

    .line 3891
    if-eqz p4, :cond_23

    .line 3893
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_22

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .line 3895
    .local v24, rt:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto :goto_9

    .line 3818
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #rt:Lcom/android/server/am/ActivityRecord;
    :cond_19
    const/high16 v3, 0x400

    and-int v3, v3, v19

    if-nez v3, :cond_1a

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 3825
    :cond_1a
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3827
    .local v26, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_1c

    .line 3828
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1b

    .line 3833
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3835
    :cond_1b
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3836
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_8

    .line 3842
    :cond_1c
    const/4 v11, 0x1

    .line 3846
    move-object/from16 p2, v25

    goto :goto_8

    .line 3848
    .end local v26           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3855
    const/high16 v3, 0x2000

    and-int v3, v3, v19

    if-eqz v3, :cond_1f

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3857
    const/16 v3, 0x7533

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3858
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1e

    .line 3859
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3861
    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 3862
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3866
    const/4 v11, 0x1

    .line 3867
    move-object/from16 p2, v25

    goto/16 :goto_8

    .line 3869
    :cond_20
    const/high16 v3, 0x20

    and-int v3, v3, v19

    if-nez v3, :cond_21

    .line 3875
    const/4 v11, 0x1

    .line 3876
    move-object/from16 p2, v25

    goto/16 :goto_8

    .line 3877
    :cond_21
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_18

    .line 3885
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_8

    .line 3899
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3903
    :goto_a
    const/4 v3, 0x2

    goto/16 :goto_7

    .line 3901
    :cond_23
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_a

    .line 3915
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_24
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 3919
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3920
    .restart local v26       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_2a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_2a

    .line 3921
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_2a

    .line 3922
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2a

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2a

    .line 3923
    const/high16 v3, 0x2000

    and-int v3, v3, v19

    if-nez v3, :cond_25

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 3926
    :cond_25
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3929
    if-eqz p4, :cond_26

    .line 3930
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3932
    :cond_26
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3933
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_27

    .line 3937
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 3939
    :cond_27
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3940
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 3947
    .end local v26           #top:Lcom/android/server/am/ActivityRecord;
    :cond_28
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_29

    .line 3948
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3952
    :cond_29
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3953
    const/4 v3, -0x2

    goto/16 :goto_7

    .line 3956
    .restart local v26       #top:Lcom/android/server/am/ActivityRecord;
    :cond_2a
    const-string v3, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3957
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "CU_Flag"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3958
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3959
    .local v17, in:Landroid/content/Intent;
    const/high16 v3, 0x5000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3960
    const-string v3, "CU_Vas"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3962
    const/4 v3, 0x4

    goto/16 :goto_7

    .line 3966
    .end local v17           #in:Landroid/content/Intent;
    :cond_2b
    const/4 v5, 0x0

    .line 3967
    .local v5, newTask:Z
    const/4 v7, 0x0

    .line 3970
    .local v7, keepCurTransition:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_30

    if-nez v11, :cond_30

    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_30

    .line 3972
    if-nez v23, :cond_2f

    .line 3974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_2c

    .line 3976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3978
    :cond_2c
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3984
    :goto_b
    const/4 v5, 0x1

    .line 3985
    if-nez v20, :cond_2d

    .line 3986
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 4047
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v3, v13, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4050
    if-eqz v5, :cond_2e

    .line 4051
    const/16 v3, 0x7534

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4053
    :cond_2e
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 4054
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 4055
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3982
    :cond_2f
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_b

    .line 3989
    :cond_30
    if-eqz p2, :cond_35

    .line 3990
    if-nez v11, :cond_32

    const/high16 v3, 0x400

    and-int v3, v3, v19

    if-eqz v3, :cond_32

    .line 3995
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3997
    const/4 v7, 0x1

    .line 3998
    if-eqz v26, :cond_34

    .line 3999
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 4003
    if-eqz p4, :cond_31

    .line 4004
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4006
    :cond_31
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4007
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 4009
    :cond_32
    if-nez v11, :cond_34

    const/high16 v3, 0x2

    and-int v3, v3, v19

    if-eqz v3, :cond_34

    .line 4014
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v28

    .line 4015
    .local v28, where:I
    if-ltz v28, :cond_34

    .line 4016
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 4017
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4018
    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4019
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 4020
    if-eqz p4, :cond_33

    .line 4021
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4023
    :cond_33
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 4029
    .end local v28           #where:I
    :cond_34
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_c

    .line 4037
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4038
    .local v10, N:I
    if-lez v10, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v3

    .line 4040
    .local v22, prev:Lcom/android/server/am/ActivityRecord;
    :goto_d
    if-eqz v22, :cond_37

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_e
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_c

    .line 4038
    .end local v22           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_36
    const/16 v22, 0x0

    goto :goto_d

    .line 4040
    .restart local v22       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_37
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_e
.end method

.method stopIfSleepingLocked()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 1062
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1065
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1067
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1072
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1075
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method final switchUser(I)Z
    .locals 9
    .parameter "userId"

    .prologue
    .line 799
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 800
    :try_start_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 803
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_0

    .line 804
    const/4 v1, 0x0

    monitor-exit v7

    .line 827
    :goto_0
    return v1

    .line 806
    :cond_0
    const/4 v1, 0x0

    .line 808
    .local v1, haveActivities:Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 809
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    const/4 v1, 0x1

    monitor-exit v7

    goto :goto_0

    .line 828
    .end local v1           #haveActivities:Z
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 811
    .restart local v1       #haveActivities:Z
    .restart local v5       #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 812
    .local v0, N:I
    const/4 v2, 0x0

    .line 813
    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 814
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 815
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_2

    .line 816
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 817
    .local v3, moveToTop:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v0, v0, -0x1

    .line 820
    const/4 v1, 0x1

    .line 821
    goto :goto_1

    .line 822
    .end local v3           #moveToTop:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 826
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 827
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final topResumedActivitiesLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 598
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 600
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_0

    .line 601
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 604
    goto :goto_0

    .line 605
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v2
.end method

.method final topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "taskId"

    .prologue
    .line 4677
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 4678
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4679
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4681
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p1, v2, :cond_0

    .line 4686
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 4684
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 4685
    goto :goto_0

    .line 4686
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 562
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 563
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 564
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 566
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    .line 571
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 569
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 570
    goto :goto_0

    .line 571
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .parameter "notTop"

    .prologue
    .line 468
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 469
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 470
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 473
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 474
    .local v1, options:I
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_0

    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 476
    add-int/lit8 v0, v0, -0x1

    .line 477
    goto :goto_0

    .line 481
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    if-eq v2, p1, :cond_1

    .line 486
    .end local v1           #options:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v2

    .line 484
    .restart local v1       #options:I
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 485
    goto :goto_0

    .line 486
    .end local v1           #options:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "baseTop"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 580
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 583
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 588
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 586
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 587
    goto :goto_0

    .line 588
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 540
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 541
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 542
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 543
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 548
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 546
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 547
    goto :goto_0

    .line 548
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 4722
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4723
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v0, :cond_0

    .line 4724
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 4726
    :cond_0
    return-void
.end method

.method public updateTasksOrderLocked(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v10, 0x0

    .line 4690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4691
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 4692
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4693
    .local v3, r:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4694
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4695
    .local v1, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v6, :cond_0

    .line 4698
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 4691
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4701
    .end local v1           #activity:Lcom/android/server/am/ActivityRecord;
    .end local v3           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4703
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4705
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4706
    .local v4, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2

    .line 4707
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v6, 0xf

    .line 4708
    .local v5, zoneInfo:I
    if-eqz v5, :cond_2

    .line 4709
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/ActivityStack$2;

    invoke-direct {v7, p0, v5}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4719
    .end local v5           #zoneInfo:I
    :cond_2
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "transit"
    .parameter "options"

    .prologue
    .line 5689
    if-eqz p2, :cond_0

    .line 5690
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5691
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 5692
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 5697
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5698
    return-void

    .line 5694
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 4653
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    .line 4654
    .local v0, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    .line 4655
    .local v1, winInfo:Landroid/os/Bundle;
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfo(ILandroid/os/Bundle;)V

    .line 4656
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    .line 4657
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4658
    :cond_0
    return-void
.end method

.method public updateWindowInfosLocked(Landroid/content/res/Configuration;I)V
    .locals 7
    .parameter "values"
    .parameter "changes"

    .prologue
    const/4 v6, 0x0

    .line 4633
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 4636
    .local v2, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 4637
    .local v4, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget v5, p1, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, p2, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4639
    invoke-direct {p0, v6, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 4640
    const/high16 v5, 0x1000

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    .line 4641
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4642
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 4643
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4644
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4642
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4647
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4648
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4650
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method final validateAppTokensLocked()V
    .locals 3

    .prologue
    .line 2754
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2755
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2756
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2757
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2759
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 2760
    return-void
.end method
