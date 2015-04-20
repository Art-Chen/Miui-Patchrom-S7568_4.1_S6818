.class public Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "PcwUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;


# static fields
.field private static final DBG:Z = true

.field public static final PCW_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final TAG:Ljava/lang/String; = "PcwUnlockScreen"


# instance fields
.field ad:Landroid/app/AlertDialog;

.field errorDlg:Landroid/app/AlertDialog;

.field private mCall:Landroid/widget/Button;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancel:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsVoiceCapacity:Z

.field private mLockMessage:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockstr:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPhoneNumer:Landroid/widget/TextView;

.field private mPhoneowner:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/Button;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private phoneNumber:Ljava/lang/String;

.field pwdDialog:Landroid/app/AlertDialog$Builder;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 94
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 96
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    .line 119
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 120
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 121
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCreationOrientation:I

    .line 124
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 125
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 126
    const v4, 0x1090082

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    :goto_0
    const v4, 0x102038a

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockstr:Landroid/widget/TextView;

    .line 132
    const v4, 0x102038b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    .line 134
    const v4, 0x102038c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    .line 136
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    .line 137
    const v4, 0x102034c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 138
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    if-nez v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    :cond_0
    const v4, 0x102038d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    .line 144
    const-string v4, "PcwUnlockScreen"

    const-string v5, "create PcwUnlockScreen"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x1040509

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, btnText:Ljava/lang/String;
    const-string v3, "\n"

    .line 152
    .local v3, newLine:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_phone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_Message"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 166
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    const-string v4, "PcwUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btnText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLockMessage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPcwInfoCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;)V

    .line 180
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 184
    return-void

    .line 128
    .end local v0           #LockMessage:Ljava/lang/String;
    .end local v1           #btnText:Ljava/lang/String;
    .end local v3           #newLine:Ljava/lang/String;
    :cond_4
    const v4, 0x1090081

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 158
    .restart local v0       #LockMessage:Ljava/lang/String;
    .restart local v1       #btnText:Ljava/lang/String;
    .restart local v3       #newLine:Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 168
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private VoIPIsInUse()Z
    .locals 5

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, bVoIP_InUse:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 393
    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 394
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 399
    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    return v0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PcwUnlockScreen"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 348
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 349
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    const v8, 0x103006e

    const/4 v7, 0x0

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 190
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    .line 191
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->VoIPIsInUse()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 197
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    const-string v4, "V2"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    const-string v4, "simSlot"

    const-string v5, "persist.radio.calldefault.simid"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_5

    .line 208
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 209
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 212
    .local v3, unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 213
    .local v0, inflater2:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v5, 0x1090080

    invoke-static {v4, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, layout:Landroid/view/View;
    const v4, 0x1020389

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 217
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-nez v4, :cond_6

    .line 218
    const-string v4, "PcwUnlockScreen"

    const-string v5, "findViewById: mPassword = null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    const-string v4, "PcwUnlockScreen"

    const-string v5, "Create PCWPassword Dialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v6, 0x104050c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 244
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 302
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 304
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 305
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 306
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 309
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 330
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 331
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 336
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public onPcwInfoChanged()V
    .locals 6

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_phone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 365
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040509

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, btnText:Ljava/lang/String;
    const-string v2, "\n"

    .line 367
    .local v2, newLine:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_Message"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    const-string v3, "PcwUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLockMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 373
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
