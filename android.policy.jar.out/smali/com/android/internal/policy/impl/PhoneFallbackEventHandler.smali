.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final CUSTOMIZEDKEY_ASSIGN_ACTION:Ljava/lang/String; = "com.android.settings.CUSTOMIZEDKEYASSIGN"

.field private static final CUSTOMIZEDKEY_ASSIGN_ACTIVITY:Ljava/lang/String; = "com.android.settings.customizedkey.CustomizedkeyAssign"

.field private static final CUSTOMIZEDKEY_ASSIGN_ORIGIN:Ljava/lang/String; = "com.android.settings"

.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCameraSpecialized:Z

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 52
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraSpecialized:Z

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraSpecialized:Z

    .line 80
    return-void
.end method

.method private callCustomizedAssignActivity(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.CUSTOMIZEDKEYASSIGN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.CustomizedkeyAssign"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 479
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 481
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 483
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find IAudioService for media key event."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchUserDefinedApp(I)Z
    .locals 10
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, launch_app:Ljava/lang/String;
    const/4 v4, 0x0

    .line 496
    .local v4, package_index:I
    const/4 v5, 0x0

    .line 497
    .local v5, package_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 499
    .local v0, activity_name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 513
    :goto_0
    if-eqz v3, :cond_0

    .line 514
    const/16 v8, 0x2f

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 515
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 516
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    :cond_0
    if-eqz v5, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 526
    :cond_1
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "None pkg name"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 542
    :goto_1
    :pswitch_0
    return v6

    .line 503
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "There is no launch app!"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v5, 0x0

    .line 521
    const/4 v0, 0x0

    move v6, v7

    .line 522
    goto :goto_1

    .line 530
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v2, i:Landroid/content/Intent;
    const/high16 v7, 0x3000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 536
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 537
    :catch_1
    move-exception v1

    .line 538
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "Activity to be assigned by the key is not found."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 93
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 95
    .local v1, keyCode:I
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 98
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 110
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 112
    .local v7, metaState:I
    sparse-switch p1, :sswitch_data_0

    .line 310
    :cond_0
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 118
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    const/high16 v10, -0x8000

    invoke-virtual {v9, p2, v10}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    .line 119
    const/4 v9, 0x1

    goto :goto_1

    .line 127
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-eqz v9, :cond_1

    .line 128
    const/4 v9, 0x1

    goto :goto_1

    .line 133
    :cond_1
    :sswitch_2
    const/16 v9, 0x4f

    if-ne p1, v9, :cond_2

    const-string v9, "ril.factory_mode"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "PBA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 135
    sget-object v9, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v9, 0x1

    goto :goto_1

    .line 145
    :cond_2
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 146
    const/4 v9, 0x1

    goto :goto_1

    .line 150
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_4

    .line 154
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 168
    :cond_3
    :goto_2
    const/4 v9, 0x1

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 156
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 157
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 159
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 163
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_2

    .line 173
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraSpecialized:Z

    if-eqz v9, :cond_6

    .line 174
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 177
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CAMERA_BUTTON"

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    const-string v9, "com.sec.android.app.camera"

    const-string v10, "com.sec.android.app.camera.CameraButtonIntentReceiver"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 200
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_7

    .line 189
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 191
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 192
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 195
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CAMERA_BUTTON"

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 205
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_b

    .line 211
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 212
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 220
    :cond_8
    :goto_4
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    .line 221
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 222
    sget-object v9, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const-string v9, "com.sec.android.app.popupuireceiver"

    const-string v10, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 230
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    :goto_5
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    .line 237
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 213
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 214
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 215
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 217
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_4

    .line 231
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 232
    .restart local v2       #e:Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "popupuireceiver is not found."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 242
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_c

    .line 246
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 247
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 248
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 249
    .local v0, config:Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    iget v9, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 252
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/SearchManager;->stopSearch()V

    .line 258
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 263
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 272
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 275
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 276
    .local v5, mHandler:Landroid/os/Handler;
    new-instance v6, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 277
    .local v6, mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 278
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 279
    .local v4, kcm:Landroid/view/KeyCharacterMap;
    const/16 v9, 0x51

    invoke-virtual {v6, v4, v9, v7}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v8

    .line 280
    .local v8, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ShortcutManager;->closeCursor()V

    .line 281
    if-eqz v8, :cond_e

    .line 282
    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 286
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->callCustomizedAssignActivity(I)V

    .line 287
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 291
    .end local v4           #kcm:Landroid/view/KeyCharacterMap;
    .end local v5           #mHandler:Landroid/os/Handler;
    .end local v6           #mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;
    .end local v8           #shortcutIntent:Landroid/content/Intent;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    .line 294
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 295
    .restart local v5       #mHandler:Landroid/os/Handler;
    new-instance v6, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 296
    .restart local v6       #mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 297
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 298
    .restart local v4       #kcm:Landroid/view/KeyCharacterMap;
    const/16 v9, 0x45

    invoke-virtual {v6, v4, v9, v7}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v8

    .line 299
    .restart local v8       #shortcutIntent:Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ShortcutManager;->closeCursor()V

    .line 300
    if-eqz v8, :cond_f

    .line 301
    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 305
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->callCustomizedAssignActivity(I)V

    .line 306
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 264
    .end local v4           #kcm:Landroid/view/KeyCharacterMap;
    .end local v5           #mHandler:Landroid/os/Handler;
    .end local v6           #mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;
    .end local v8           #shortcutIntent:Landroid/content/Intent;
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_7
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xed -> :sswitch_6
        0x12c -> :sswitch_8
        0x12d -> :sswitch_9
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 317
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 318
    .local v6, repeatCount:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 319
    .local v3, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v3, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 323
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    move v7, v8

    .line 422
    :cond_2
    :goto_1
    return v7

    .line 329
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 330
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 332
    .local v1, audioManager:Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v8

    const/high16 v9, -0x8000

    invoke-virtual {v8, p2, v9}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_1

    .line 341
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :sswitch_1
    const/16 v8, 0x4f

    if-ne p1, v8, :cond_3

    const-string v8, "ril.factory_mode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PBA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 343
    sget-object v8, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    :cond_3
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 362
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 365
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleCameraKeyEvent()V

    goto :goto_1

    .line 372
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 375
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 383
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 386
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_2

    .line 387
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 388
    sget-object v9, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_4
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 397
    :sswitch_6
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.chaton"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 398
    .local v2, chatonInfo:Landroid/content/pm/ApplicationInfo;
    iget-boolean v0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 399
    .local v0, appStatus:Z
    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v0, :cond_6

    .line 400
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 402
    const-string v9, "com.sec.chaton"

    const-string v10, "com.sec.chaton.HomeActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v9, "keyCode"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 417
    .end local v0           #appStatus:Z
    .end local v2           #chatonInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 418
    .local v5, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "chaton package not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    .end local v5           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #appStatus:Z
    .restart local v2       #chatonInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_5
    :try_start_1
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "KEYCODE_CHATON couldn\'t be sent, intent is null"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 410
    goto/16 :goto_1

    .line 414
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "KEYCODE_CHATON else 1"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 415
    goto/16 :goto_1

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xed -> :sswitch_5
        0x12f -> :sswitch_6
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 88
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 84
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 436
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleCameraKeyEvent()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    return-void
.end method
