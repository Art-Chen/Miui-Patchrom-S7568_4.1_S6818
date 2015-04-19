.class public Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;
.super Landroid/widget/LinearLayout;
.source "ParentControlLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;
    }
.end annotation


# static fields
.field private static final ALLOW_MINUTES:Ljava/lang/String; = "allow_minutes"

.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final BLOCK_TIME_END_HOUR:Ljava/lang/String; = "block_end_hour"

.field private static final BLOCK_TIME_END_MIN:Ljava/lang/String; = "block_end_min"

.field private static final BLOCK_TIME_START_HOUR:Ljava/lang/String; = "block_start_hour"

.field private static final BLOCK_TIME_START_MIN:Ljava/lang/String; = "block_start_min"

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final LOCK_PARENT_CONTROL_CLASS:Ljava/lang/String; = "com.android.kidstabletsettings.CreatePinActivity"

.field private static final LOCK_PARENT_CONTROL_PACKAGE:Ljava/lang/String; = "com.android.kidstabletsettings"

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x4

.field private static final MODE_ALLOW_TIMER:I = 0x2

.field private static final MODE_ALLOW_UNLIMITED:I = 0x1

.field private static final MODE_BLOCK_DEVICE:I = 0x3

.field private static final NOTIFY_KIDS_TIMEMGR_PINLOCK_CLEAR:Ljava/lang/String; = "android.intent.action.NOTIFY_KIDS_TIMEMGR_PINLOCK_CLEAR"

.field private static final SAVED_MODE:Ljava/lang/String; = "saved_mode"

.field private static final TAG:Ljava/lang/String; = "ParentControlLockScreen"


# instance fields
.field private mAllowMinutes:I

.field private mBlockEndHour:I

.field private mBlockEndMin:I

.field private mBlockMode:I

.field private mBlockStartHour:I

.field private mBlockStartMin:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private mEnableFallback:Z

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mGloginView:Landroid/widget/LinearLayout;

.field private mInstructions:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mLoginButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPin0:Landroid/widget/ImageView;

.field private mPin1:Landroid/widget/ImageView;

.field private mPin2:Landroid/widget/ImageView;

.field private mPin3:Landroid/widget/ImageView;

.field private mPinView:Landroid/widget/LinearLayout;

.field private mStatusMsg:Landroid/widget/TextView;

.field private mStatusMsg2:Landroid/widget/TextView;

.field private mStatusMsg3:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredPin:[I

    .line 97
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    .line 112
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnableFallback:Z

    .line 137
    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockMode:I

    .line 138
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mAllowMinutes:I

    .line 139
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartHour:I

    .line 140
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartMin:I

    .line 141
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndHour:I

    .line 142
    iput v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndMin:I

    .line 149
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationHardKeyboardHidden:I

    .line 150
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationOrientation:I

    .line 151
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 152
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 153
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103006b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x109007b

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    new-instance v1, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$1;)V

    .line 162
    const v1, 0x1020368

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPinView:Landroid/widget/LinearLayout;

    .line 163
    const v1, 0x1020379

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    .line 166
    const v1, 0x102036a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin0:Landroid/widget/ImageView;

    .line 167
    const v1, 0x102036b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin1:Landroid/widget/ImageView;

    .line 168
    const v1, 0x102036c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin2:Landroid/widget/ImageView;

    .line 169
    const v1, 0x102036d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin3:Landroid/widget/ImageView;

    .line 171
    const v1, 0x1020369

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg:Landroid/widget/TextView;

    .line 172
    const v1, 0x102036e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg2:Landroid/widget/TextView;

    .line 176
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mTitle:Landroid/widget/TextView;

    .line 179
    const v1, 0x102034f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mInstructions:Landroid/widget/TextView;

    .line 181
    const v1, 0x1020350

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v3}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    const v1, 0x1020351

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPassword:Landroid/widget/EditText;

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    const v1, 0x102037b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLoginButton:Landroid/widget/Button;

    .line 191
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLoginButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v1, 0x102037a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg3:Landroid/widget/TextView;

    .line 200
    const-string v1, "ParentControlLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback.doesFallbackUnlockScreenExist() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getFailedCount()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-interface {p5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPinView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mTitle:Landroid/widget/TextView;

    const-string v2, "Google account"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg3:Landroid/widget/TextView;

    const-string v2, "You have incorrectly entered your PIN five times. To confirm, Sign in with your Google account."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->setFocusableInTouchMode(Z)V

    .line 221
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mTitle:Landroid/widget/TextView;

    const-string v2, "Confirm PIN"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg2:Landroid/widget/TextView;

    const-string v2, "Device available time was limited by parental control."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->retreivingBlockTimeInfo()V

    goto :goto_0

    .line 94
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->asyncCheckPassword()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->handleBackButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->setFailedCount(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x7530

    invoke-interface {v0, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, login:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, password:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 650
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->postOnCheckPasswordResult(Z)V

    .line 681
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 655
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 656
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13
    .parameter "username"

    .prologue
    const/16 v12, 0x40

    .line 610
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 616
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 617
    .local v4, bestAccount:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 618
    .local v5, bestScore:I
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 619
    .local v0, a:Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 620
    .local v9, score:I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 621
    const/4 v9, 0x4

    .line 635
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 636
    move-object v4, v0

    .line 637
    move v5, v9

    .line 618
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 622
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 623
    const/4 v9, 0x3

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 625
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 626
    .local v6, i:I
    if-ltz v6, :cond_0

    .line 627
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, aUsername:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 629
    const/4 v9, 0x2

    goto :goto_1

    .line 630
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 631
    const/4 v9, 0x1

    goto :goto_1

    .line 638
    .end local v1           #aUsername:Ljava/lang/String;
    .end local v6           #i:I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 639
    const/4 v4, 0x0

    goto :goto_2

    .line 642
    .end local v0           #a:Landroid/accounts/Account;
    .end local v9           #score:I
    :cond_6
    return-object v4
.end method

.method private getFailedCount()I
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_block_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040490

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleBackButton()V
    .locals 4

    .prologue
    const v3, 0x108048f

    .line 519
    iget v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    if-gtz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 523
    iget v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 531
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 534
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 3
    .parameter "success"

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 561
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;ZLandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void
.end method

.method private reportDigit(I)V
    .locals 4
    .parameter "digit"

    .prologue
    const v3, 0x1080490

    .line 492
    iget v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 495
    :cond_0
    const-string v0, "ParentControlLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnteredDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    packed-switch v0, :pswitch_data_0

    .line 514
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 508
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetPIN()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x108048f

    .line 542
    iput v3, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    .line 543
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredPin:[I

    aput v3, v1, v0

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin0:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPin3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    return-void
.end method

.method private retreivingBlockTimeInfo()V
    .locals 8

    .prologue
    .line 235
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kids_block_time_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, blockTimeData:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3b

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 240
    .local v3, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, count:I
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 243
    .local v4, value:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockMode:I

    goto :goto_1

    .line 248
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mAllowMinutes:I

    goto :goto_1

    .line 251
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartHour:I

    goto :goto_1

    .line 254
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartMin:I

    goto :goto_1

    .line 257
    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndHour:I

    goto :goto_1

    .line 260
    :pswitch_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndMin:I

    goto :goto_1

    .line 268
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAllowMinutes ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mAllowMinutes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockStartHour ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockStartMin ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockStartMin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockEndHour ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v5, "ParentControlLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockEndMin ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mBlockEndMin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setFailedCount(I)V
    .locals 2
    .parameter "failedCount"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_block_fail_count"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    return-void
.end method

.method private verifyPasswordAndUnlock()V
    .locals 8

    .prologue
    const v7, 0x1040458

    .line 318
    const-string v1, ""

    .line 319
    .local v1, entry:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    if-ge v3, v4, :cond_0

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredPin:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_0
    const-string v4, "ParentControlLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEnteredPin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkParentControlPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->setFailedCount(I)V

    .line 328
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 330
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 331
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->resetPIN()V

    .line 334
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getFailedCount()I

    move-result v2

    .line 335
    .local v2, failedCount:I
    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->setFailedCount(I)V

    .line 337
    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 339
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 342
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #failedCount:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v4, :cond_1

    .line 343
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mStatusMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->resetPIN()V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 224
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 227
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 314
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 362
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 366
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 376
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 379
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 381
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPinView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPinView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 383
    sget-object v2, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 384
    .local v0, match:C
    if-eqz v0, :cond_0

    .line 385
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->reportDigit(I)V

    .line 399
    .end local v0           #match:C
    :goto_0
    return v1

    .line 388
    .restart local v0       #match:C
    :cond_0
    const/16 v2, 0x43

    if-ne p1, v2, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->handleBackButton()V

    goto :goto_0

    .line 393
    :cond_1
    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->verifyPasswordAndUnlock()V

    goto :goto_0

    .line 399
    .end local v0           #match:C
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 286
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 294
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnteredDigits:I

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mGloginView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 299
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 553
    const-string v0, "ParentControlLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableFallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mEnableFallback:Z

    .line 555
    return-void
.end method
