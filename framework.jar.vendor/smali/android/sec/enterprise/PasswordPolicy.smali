.class public Landroid/sec/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final ICCID_AVAILABLE:Ljava/lang/String; = "com.android.server.enterprise.ICCID_AVAILABLE"

.field public static final PWD_CHANGE_NOT_ENFORCED:I

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "PasswordPolicy"

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.SubSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone.EmergencyDialer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.phone.InCallScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.internal.policy.impl.LockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.internal.policy.impl.PatternUnlockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.internal.policy.impl.PasswordUnlockScreen"

    aput-object v2, v0, v1

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangeRequested()I
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isChangeRequested()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isChangeRequested returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 3

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isScreenLockPatternVisibilityEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 3
    .parameter "iccId"

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSimLockedByAdmin(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSimLockedByAdmin returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method
