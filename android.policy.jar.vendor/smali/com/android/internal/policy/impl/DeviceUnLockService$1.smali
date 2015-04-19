.class Lcom/android/internal/policy/impl/DeviceUnLockService$1;
.super Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;
.source "DeviceUnLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceUnLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DeviceUnLockService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/IDeviceUnlockService$Stub;-><init>()V

    return-void
.end method

.method private verifyPassword(Ljava/lang/String;)Z
    .locals 5
    .parameter "entry"

    .prologue
    .line 59
    const-string v2, "LocalAppMainServicess"

    const-string v3, "verifyPassword"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v2, 0x1

    .line 70
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocalAppMainServicess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while verifyPassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isScreenLocked()Z
    .locals 4

    .prologue
    .line 126
    const-string v1, "LocalAppMainServicess"

    const-string v2, "isScreenLocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "LocalAppMainServicess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocalAppMainServicess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting isScreenLocked  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unlockScreen(Ljava/lang/String;)I
    .locals 6
    .parameter "entry"

    .prologue
    .line 81
    const-string v3, "LocalAppMainServicess"

    const-string v4, "unlockScreen"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 84
    :cond_0
    const-string v3, "LocalAppMainServicess"

    const-string v4, "password_is_blank"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v3, 0x11173

    .line 118
    :goto_0
    return v3

    .line 89
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    const-string v3, "LocalAppMainServicess"

    const-string v4, "password_is_wrong"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v3, 0x11172

    goto :goto_0

    .line 96
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    #getter for: Lcom/android/internal/policy/impl/DeviceUnLockService;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/DeviceUnLockService;->access$000(Lcom/android/internal/policy/impl/DeviceUnLockService;)Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 98
    const-string v3, "LocalAppMainServicess"

    const-string v4, "screen_unlocked_successfully"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-string v3, "unlock_broadcast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/DeviceUnLockService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 103
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 106
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/DeviceUnLockService$1;->this$0:Lcom/android/internal/policy/impl/DeviceUnLockService;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const v3, 0x11171

    goto :goto_0

    .line 112
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LocalAppMainServicess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while unlocking"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v3, "LocalAppMainServicess"

    const-string v4, "other_exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const v3, 0x11174

    goto :goto_0
.end method
