.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80

    :goto_0
    or-int v0, v2, v1

    .line 1173
    .local v0, visFlags:I
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set visibility on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSystemUiVisibility(I)V

    .line 1175
    return-void

    .line 1171
    .end local v0           #visFlags:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCsSimStateChanged(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 1200
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCsSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isChangedVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "onCsSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/sec/WallpaperWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/sec/WallpaperWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/WallpaperWidget;->changeWallpaperBySimId(I)V

    .line 1206
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .parameter "phoneState"

    .prologue
    const/4 v3, 0x1

    .line 1180
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    .line 1186
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 2
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPluggedIn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 1163
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->hide()V

    .line 1164
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPluggedIn:Z
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 1167
    return-void
.end method

.method public onUserChanged(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 1195
    return-void
.end method
