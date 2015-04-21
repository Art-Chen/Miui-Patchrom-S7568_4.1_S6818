.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1074
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1075
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1077
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1079
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 105
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-void
.end method

.method private addClipServiceExtra()V
    .locals 2

    .prologue
    const-string v0, "miui.clipserviceext"

    new-instance v1, Lcom/miui/server/ClipServiceExtra;

    invoke-direct {v1}, Lcom/miui/server/ClipServiceExtra;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public run()V
    .locals 130

    .prologue
    .line 111
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 118
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 122
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 126
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 128
    .local v107, shutdownAction:Ljava/lang/String;
    if-eqz v107, :cond_0

    invoke-virtual/range {v107 .. v107}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v107

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_14

    const/16 v101, 0x1

    .line 132
    .local v101, reboot:Z
    :goto_0
    invoke-virtual/range {v107 .. v107}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_15

    .line 133
    const/4 v3, 0x1

    invoke-virtual/range {v107 .. v107}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v107

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v100

    .line 138
    .local v100, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v101

    move-object/from16 v1, v100

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 142
    .end local v100           #reason:Ljava/lang/String;
    .end local v101           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 143
    .local v75, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v74, 0x0

    .line 145
    .local v74, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 147
    .local v16, headless:Z
    const/16 v41, 0x0

    .line 148
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v59, 0x0

    .line 149
    .local v59, contentService:Landroid/content/ContentService;
    const/16 v81, 0x0

    .line 150
    .local v81, lights:Lcom/android/server/LightsService;
    const/16 v99, 0x0

    .line 151
    .local v99, power:Lcom/android/server/PowerManagerService;
    const/16 v49, 0x0

    .line 152
    .local v49, battery:Lcom/android/server/BatteryService;
    const/16 v118, 0x0

    .line 153
    .local v118, vibrator:Lcom/android/server/VibratorService;
    const/16 v43, 0x0

    .line 154
    .local v43, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 155
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 156
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v90, 0x0

    .line 157
    .local v90, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 158
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v127, 0x0

    .line 159
    .local v127, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v125, 0x0

    .line 160
    .local v125, wifi:Lcom/android/server/WifiService;
    const/16 v123, 0x0

    .line 161
    .local v123, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v106, 0x0

    .line 162
    .local v106, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v98, 0x0

    .line 163
    .local v98, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 164
    .local v4, context:Landroid/content/Context;
    const/16 v129, 0x0

    .line 165
    .local v129, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 166
    .local v50, bluetooth:Landroid/server/BluetoothService;
    const/16 v52, 0x0

    .line 167
    .local v52, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v46, 0x0

    .line 168
    .local v46, avrcp:Landroid/server/AvrcpStubService;
    const/16 v67, 0x0

    .line 169
    .local v67, dock:Lcom/android/server/DockObserver;
    const/16 v116, 0x0

    .line 170
    .local v116, usb:Lcom/android/server/usb/UsbService;
    const/16 v104, 0x0

    .line 171
    .local v104, serial:Lcom/android/server/SerialService;
    const/16 v114, 0x0

    .line 172
    .local v114, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v102, 0x0

    .line 173
    .local v102, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v110, 0x0

    .line 174
    .local v110, throttle:Lcom/android/server/ThrottleService;
    const/16 v92, 0x0

    .line 175
    .local v92, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 176
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v79, 0x0

    .line 179
    .local v79, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v63, 0x0

    .line 183
    .local v63, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 186
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_57

    .line 188
    .end local v99           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static/range {v74 .. v74}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 193
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 211
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 214
    .local v62, cryptState:Ljava/lang/String;
    const/16 v96, 0x0

    .line 215
    .local v96, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 216
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v96, 0x1

    .line 223
    :cond_1
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v74, :cond_18

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v96

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v98

    .line 227
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    const/16 v76, 0x0

    .line 230
    .local v76, firstBoot:Z
    :try_start_2
    invoke-interface/range {v98 .. v98}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v76

    .line 234
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 236
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 240
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 242
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_58

    move-object/from16 v41, v42

    .line 247
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_19

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v59

    .line 253
    new-instance v64, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 255
    .end local v63           #dEncService:Lcom/android/server/DirEncryptService;
    .local v64, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_7
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_2

    .line 256
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_59

    :cond_2
    move-object/from16 v63, v64

    .line 263
    .end local v64           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v63       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_8
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 266
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v82, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 269
    .end local v81           #lights:Lcom/android/server/LightsService;
    .local v82, lights:Lcom/android/server/LightsService;
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v82

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5a

    .line 271
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_a
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v119, Lcom/android/server/VibratorService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5b

    .line 275
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .local v119, vibrator:Lcom/android/server/VibratorService;
    :try_start_b
    const-string v3, "vibrator"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 281
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5c

    .line 283
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_c
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 285
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 289
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v76, :cond_1b

    const/4 v3, 0x1

    :goto_a
    move/from16 v0, v96

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v129

    .line 293
    const-string v3, "window"

    move-object/from16 v0, v129

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 294
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v79

    .line 295
    const-string v3, "input"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v129

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 300
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 306
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 307
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    :goto_b
    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .line 343
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v82           #lights:Lcom/android/server/LightsService;
    .end local v96           #onlyCore:Z
    .restart local v81       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v65, 0x0

    .line 345
    .local v65, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v72, 0x0

    .line 347
    .local v72, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v108, 0x0

    .line 348
    .local v108, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v77, 0x0

    .line 349
    .local v77, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v44, 0x0

    .line 350
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v94, 0x0

    .line 351
    .local v94, notification:Lcom/android/server/NotificationManagerService;
    const/16 v121, 0x0

    .line 352
    .local v121, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v83, 0x0

    .line 353
    .local v83, location:Lcom/android/server/LocationManagerService;
    const/16 v60, 0x0

    .line 354
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v112, 0x0

    .line 355
    .local v112, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v85, 0x0

    .line 356
    .local v85, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v69, 0x0

    .line 359
    .local v69, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_3

    .line 361
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v78, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v78

    move-object/from16 v1, v129

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 363
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .local v78, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_56

    move-object/from16 v77, v78

    .line 369
    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 378
    :cond_3
    :goto_e
    :try_start_10
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 384
    :goto_f
    :try_start_11
    invoke-interface/range {v98 .. v98}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 390
    :goto_10
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104055b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_55

    .line 397
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_1f

    .line 398
    const/16 v88, 0x0

    .line 399
    .local v88, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 405
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v89, Lcom/android/server/MountService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 407
    .end local v88           #mountService:Lcom/android/server/MountService;
    .local v89, mountService:Lcom/android/server/MountService;
    :try_start_14
    const-string v3, "mount"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_54

    move-object/from16 v88, v89

    .line 415
    .end local v89           #mountService:Lcom/android/server/MountService;
    .restart local v88       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz v63, :cond_5

    .line 417
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 426
    :cond_5
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v86, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v86

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 428
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v86, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_17
    const-string v3, "lock_settings"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_53

    move-object/from16 v85, v86

    .line 434
    .end local v86           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v66, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 436
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v66, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_19
    const-string v3, "device_policy"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_52

    move-object/from16 v65, v66

    .line 444
    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v73, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v98

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v73

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 446
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v73, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_1b
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 447
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_51

    move-object/from16 v72, v73

    .line 454
    .end local v73           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v72       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v109, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v109

    move-object/from16 v1, v129

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 456
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v109, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1d
    const-string v3, "statusbar"

    move-object/from16 v0, v109

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_50

    move-object/from16 v108, v109

    .line 462
    .end local v109           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServerThread;->addClipServiceExtra()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 473
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 481
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 483
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 489
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v113, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 491
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v113, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_22
    const-string v3, "textservices"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4f

    move-object/from16 v112, v113

    .line 497
    .end local v113           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v91, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 499
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v91, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_24
    const-string v3, "netstats"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4e

    move-object/from16 v12, v91

    .line 505
    .end local v91           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 509
    .end local v90           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_26
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4d

    .line 515
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v128, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v128

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 517
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v128, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_28
    const-string v3, "wifip2p"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4c

    move-object/from16 v127, v128

    .line 523
    .end local v128           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v126, Lcom/android/server/WifiService;

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 525
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .local v126, wifi:Lcom/android/server/WifiService;
    :try_start_2a
    const-string v3, "wifi"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4b

    move-object/from16 v125, v126

    .line 532
    .end local v126           #wifi:Lcom/android/server/WifiService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v124, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 534
    .end local v123           #wfd:Lcom/samsung/wfd/WfdService;
    .local v124, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_2c
    const-string v3, "wfd"

    move-object/from16 v0, v124

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4a

    move-object/from16 v123, v124

    .line 540
    .end local v124           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v123       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 543
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .local v58, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2e
    const-string v3, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 544
    move-object/from16 v0, v58

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 545
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 546
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 547
    invoke-virtual/range {v127 .. v127}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_49

    move-object/from16 v57, v58

    .line 553
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v106

    .line 555
    const-string v3, "servicediscovery"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 562
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v111, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 564
    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .local v111, throttle:Lcom/android/server/ThrottleService;
    :try_start_31
    const-string v3, "throttle"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_48

    move-object/from16 v110, v111

    .line 571
    .end local v111           #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #throttle:Lcom/android/server/ThrottleService;
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1a

    .line 585
    :goto_24
    if-eqz v88, :cond_6

    .line 587
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 588
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 592
    :cond_6
    if-eqz v41, :cond_7

    .line 593
    :try_start_33
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 599
    :cond_7
    :goto_25
    if-eqz v59, :cond_8

    .line 600
    :try_start_34
    invoke-virtual/range {v59 .. v59}, Landroid/content/ContentService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 606
    :cond_8
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v95, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v95

    move-object/from16 v1, v108

    move-object/from16 v2, v81

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 608
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .local v95, notification:Lcom/android/server/NotificationManagerService;
    :try_start_36
    const-string v3, "notification"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_47

    move-object/from16 v94, v95

    .line 615
    .end local v95           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v94       #notification:Lcom/android/server/NotificationManagerService;
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/ServerThread$Injector;->setMemoryLowThresholdProperty()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 623
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v84, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 625
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .local v84, location:Lcom/android/server/LocationManagerService;
    :try_start_39
    const-string v3, "location"

    move-object/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_46

    move-object/from16 v83, v84

    .line 631
    .end local v84           #location:Lcom/android/server/LocationManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    :goto_29
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v61, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    .line 633
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v61, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3b
    const-string v3, "country_detector"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_45

    move-object/from16 v60, v61

    .line 639
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2a
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    .line 647
    :goto_2b
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_22

    .line 654
    :goto_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 657
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-nez v16, :cond_9

    .line 659
    new-instance v122, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 660
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v122, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3f
    const-string v3, "wallpaper"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_44

    move-object/from16 v121, v122

    .line 667
    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 669
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 676
    :cond_a
    :goto_2e
    const-string v3, "0"

    const-string v9, "system_init.startfmservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 678
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Fm Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v3, "fm"

    new-instance v9, Landroid/hardware/fm/FmService;

    invoke-direct {v9, v4}, Landroid/hardware/fm/FmService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    .line 686
    :cond_b
    :goto_2f
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v68, Lcom/android/server/DockObserver;

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .end local v67           #dock:Lcom/android/server/DockObserver;
    .local v68, dock:Lcom/android/server/DockObserver;
    move-object/from16 v67, v68

    .line 694
    .end local v68           #dock:Lcom/android/server/DockObserver;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    :goto_30
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 702
    :goto_31
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v117, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .line 705
    .end local v116           #usb:Lcom/android/server/usb/UsbService;
    .local v117, usb:Lcom/android/server/usb/UsbService;
    :try_start_45
    const-string v3, "usb"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_43

    move-object/from16 v116, v117

    .line 711
    .end local v117           #usb:Lcom/android/server/usb/UsbService;
    .restart local v116       #usb:Lcom/android/server/usb/UsbService;
    :goto_32
    const-string v3, "security"

    new-instance v9, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v9, v4}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v105, Lcom/android/server/SerialService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .line 714
    .end local v104           #serial:Lcom/android/server/SerialService;
    .local v105, serial:Lcom/android/server/SerialService;
    :try_start_47
    const-string v3, "serial"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_42

    move-object/from16 v104, v105

    .line 720
    .end local v105           #serial:Lcom/android/server/SerialService;
    .restart local v104       #serial:Lcom/android/server/SerialService;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v115, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    .end local v114           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v115, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v114, v115

    .line 728
    .end local v115           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v114       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_34
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2b

    .line 736
    :goto_35
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v45, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2c

    .line 738
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4b
    const-string v3, "appwidget"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_41

    move-object/from16 v44, v45

    .line 744
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v103, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2d

    .end local v102           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v103, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v102, v103

    .line 751
    .end local v103           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v102       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_37
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2e

    .line 762
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2f

    .line 770
    :goto_39
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v93, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_30

    .end local v92           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v93, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v92, v93

    .line 776
    .end local v93           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v97

    .line 778
    .local v97, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v97

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 780
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v80, Landroid/app/IrdaService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 782
    .local v80, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .line 788
    .end local v80           #irda:Landroid/app/IrdaService;
    :cond_c
    :goto_3b
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v97

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 790
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v48, Landroid/app/BarBeamService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 793
    .local v48, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 800
    .end local v48           #barbeam:Landroid/app/BarBeamService;
    :cond_d
    :goto_3c
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_33

    .line 802
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v55, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_53
    const-string v3, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_40

    move-object/from16 v54, v55

    .line 808
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3d
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_34

    .line 815
    :goto_3e
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .line 824
    :goto_3f
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    .line 830
    :goto_40
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 833
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v70, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_37

    .line 836
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v70, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_58
    const-string v3, "dreams"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_3f

    move-object/from16 v69, v70

    .line 845
    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v88           #mountService:Lcom/android/server/MountService;
    .end local v97           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_e
    :goto_41
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 846
    .local v28, safeMode:Z
    if-eqz v28, :cond_1e

    .line 847
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 849
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 851
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 860
    :goto_42
    :try_start_59
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 865
    :goto_43
    if-eqz v65, :cond_f

    .line 867
    :try_start_5a
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 875
    :cond_f
    :goto_44
    if-eqz v72, :cond_10

    .line 876
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 877
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_10
    if-eqz v94, :cond_11

    .line 883
    :try_start_5b
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 890
    :cond_11
    :goto_45
    :try_start_5c
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 895
    :goto_46
    if-eqz v28, :cond_12

    .line 896
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 902
    :cond_12
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 903
    .local v56, config:Landroid/content/res/Configuration;
    new-instance v87, Landroid/util/DisplayMetrics;

    invoke-direct/range {v87 .. v87}, Landroid/util/DisplayMetrics;-><init>()V

    .line 904
    .local v87, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Landroid/view/WindowManager;

    .line 905
    .local v120, w:Landroid/view/WindowManager;
    invoke-interface/range {v120 .. v120}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 906
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v56

    move-object/from16 v1, v87

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 908
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 910
    :try_start_5d
    invoke-interface/range {v98 .. v98}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3c

    .line 915
    :goto_47
    :try_start_5e
    invoke-virtual/range {v85 .. v85}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3d

    .line 921
    :goto_48
    move-object/from16 v17, v4

    .line 922
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 923
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 924
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 925
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 926
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v57

    .line 927
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v67

    .line 928
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v116

    .line 929
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v110

    .line 930
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v114

    .line 931
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v44

    .line 932
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v121

    .line 933
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v77

    .line 934
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v102

    .line 935
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v83

    .line 936
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v60

    .line 937
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v92

    .line 938
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v54

    .line 939
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v112

    .line 940
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v108

    .line 941
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v69

    .line 942
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v79

    .line 943
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v50

    .line 950
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1064
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1065
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_13
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1070
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 129
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v59           #contentService:Landroid/content/ContentService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #dock:Lcom/android/server/DockObserver;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v74           #factoryTest:I
    .end local v75           #factoryTestStr:Ljava/lang/String;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v87           #metrics:Landroid/util/DisplayMetrics;
    .end local v92           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .end local v98           #pm:Landroid/content/pm/IPackageManager;
    .end local v102           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v104           #serial:Lcom/android/server/SerialService;
    .end local v106           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v114           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v116           #usb:Lcom/android/server/usb/UsbService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .end local v120           #w:Landroid/view/WindowManager;
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v123           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v129           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_14
    const/16 v101, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v101       #reboot:Z
    :cond_15
    const/16 v100, 0x0

    .restart local v100       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 143
    .end local v100           #reason:Ljava/lang/String;
    .end local v101           #reboot:Z
    .restart local v75       #factoryTestStr:Ljava/lang/String;
    :cond_16
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    goto/16 :goto_2

    .line 218
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #contentService:Landroid/content/ContentService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v63       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    .restart local v74       #factoryTest:I
    .restart local v79       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v90       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v96       #onlyCore:Z
    .restart local v98       #pm:Landroid/content/pm/IPackageManager;
    .restart local v102       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v104       #serial:Lcom/android/server/SerialService;
    .restart local v106       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v110       #throttle:Lcom/android/server/ThrottleService;
    .restart local v114       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v116       #usb:Lcom/android/server/usb/UsbService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v129       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_17
    :try_start_5f
    const-string v3, "1"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v96, 0x1

    goto/16 :goto_3

    .line 224
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 243
    .restart local v76       #firstBoot:Z
    :catch_0
    move-exception v71

    .line 244
    .local v71, e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_1

    goto/16 :goto_6

    .line 338
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v76           #firstBoot:Z
    .end local v96           #onlyCore:Z
    :catch_1
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .line 339
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v71, e:Ljava/lang/RuntimeException;
    :goto_4a
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 248
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #e:Ljava/lang/RuntimeException;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v96       #onlyCore:Z
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 258
    .end local v63           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v64       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_2
    move-exception v71

    .line 259
    .local v71, e:Ljava/lang/Throwable;
    :try_start_60
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_59

    .line 260
    const/16 v63, 0x0

    .end local v64           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v63       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_8

    .line 290
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :cond_1a
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 308
    :cond_1c
    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_1d

    .line 309
    :try_start_61
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 338
    :catch_3
    move-exception v71

    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto :goto_4a

    .line 311
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :cond_1d
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v51, Landroid/server/BluetoothService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_3

    .line 313
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .local v51, bluetooth:Landroid/server/BluetoothService;
    :try_start_62
    const-string v3, "bluetooth"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 314
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 316
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 317
    new-instance v53, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v53

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5d

    .line 318
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v53, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_63
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 320
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v47, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_5e

    .line 322
    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .local v47, avrcp:Landroid/server/AvrcpStubService;
    :try_start_64
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 323
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_5f

    move-object/from16 v46, v47

    .end local v47           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 364
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v82           #lights:Lcom/android/server/LightsService;
    .end local v96           #onlyCore:Z
    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v71

    .line 365
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 372
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v71

    .line 373
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 379
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v71

    .line 380
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 385
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v71

    .line 386
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 408
    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v88       #mountService:Lcom/android/server/MountService;
    :catch_8
    move-exception v71

    .line 409
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 420
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v71

    .line 421
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 429
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v71

    .line 430
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 437
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v71

    .line 438
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 448
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v71

    .line 449
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 457
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v71

    .line 458
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 465
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v71

    .line 466
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 476
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v71

    .line 477
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 484
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v71

    .line 485
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 492
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v71

    .line 493
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 500
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v71

    .line 501
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 510
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v71

    move-object/from16 v8, v90

    .line 511
    .end local v90           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 518
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v71

    .line 519
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 526
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v71

    .line 527
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 535
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v71

    .line 536
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 548
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v71

    .line 549
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 557
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v71

    .line 558
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 566
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v71

    .line 567
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 574
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v71

    .line 575
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 594
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v71

    .line 595
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 601
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v71

    .line 602
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 610
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v71

    .line 611
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 618
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v71

    .line 619
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 626
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v71

    .line 627
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 634
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v71

    .line 635
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 642
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v71

    .line 643
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 650
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v71

    .line 651
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 662
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v71

    .line 663
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 671
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v71

    .line 672
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 680
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v71

    .line 681
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Fm Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 689
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v71

    .line 690
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 697
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v71

    .line 698
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 706
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v71

    .line 707
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 715
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v71

    .line 716
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 723
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v71

    .line 724
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 731
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v71

    .line 732
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 739
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v71

    .line 740
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 746
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v71

    .line 747
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 753
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v71

    .line 754
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 765
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v71

    .line 766
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 772
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v71

    .line 773
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 783
    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v97       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_31
    move-exception v71

    .line 784
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 794
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v71

    .line 795
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 803
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v71

    .line 804
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 810
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v71

    .line 811
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 817
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v71

    .line 818
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 826
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v71

    .line 827
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 837
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v71

    .line 838
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 854
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v88           #mountService:Lcom/android/server/MountService;
    .end local v97           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v28       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_42

    .line 861
    :catch_38
    move-exception v71

    .line 862
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 868
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v71

    .line 869
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 884
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v71

    .line 885
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 891
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v71

    .line 892
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 911
    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v56       #config:Landroid/content/res/Configuration;
    .restart local v87       #metrics:Landroid/util/DisplayMetrics;
    .restart local v120       #w:Landroid/view/WindowManager;
    :catch_3c
    move-exception v71

    .line 912
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 916
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v71

    .line 917
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 231
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v87           #metrics:Landroid/util/DisplayMetrics;
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v120           #w:Landroid/view/WindowManager;
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v90       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v96       #onlyCore:Z
    :catch_3e
    move-exception v3

    goto/16 :goto_5

    .line 837
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v90           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v96           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v70       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v88       #mountService:Lcom/android/server/MountService;
    .restart local v94       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3f
    move-exception v71

    move-object/from16 v69, v70

    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_61

    .line 803
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_40
    move-exception v71

    move-object/from16 v54, v55

    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 739
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v97           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_41
    move-exception v71

    move-object/from16 v44, v45

    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 715
    .end local v104           #serial:Lcom/android/server/SerialService;
    .restart local v105       #serial:Lcom/android/server/SerialService;
    :catch_42
    move-exception v71

    move-object/from16 v104, v105

    .end local v105           #serial:Lcom/android/server/SerialService;
    .restart local v104       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 706
    .end local v116           #usb:Lcom/android/server/usb/UsbService;
    .restart local v117       #usb:Lcom/android/server/usb/UsbService;
    :catch_43
    move-exception v71

    move-object/from16 v116, v117

    .end local v117           #usb:Lcom/android/server/usb/UsbService;
    .restart local v116       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 662
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v122       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v71

    move-object/from16 v121, v122

    .end local v122           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5c

    .line 634
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_45
    move-exception v71

    move-object/from16 v60, v61

    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5b

    .line 626
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #location:Lcom/android/server/LocationManagerService;
    :catch_46
    move-exception v71

    move-object/from16 v83, v84

    .end local v84           #location:Lcom/android/server/LocationManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5a

    .line 610
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #notification:Lcom/android/server/NotificationManagerService;
    :catch_47
    move-exception v71

    move-object/from16 v94, v95

    .end local v95           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v94       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_59

    .line 566
    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .restart local v111       #throttle:Lcom/android/server/ThrottleService;
    :catch_48
    move-exception v71

    move-object/from16 v110, v111

    .end local v111           #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_58

    .line 548
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_49
    move-exception v71

    move-object/from16 v57, v58

    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_57

    .line 535
    .end local v123           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v124       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_4a
    move-exception v71

    move-object/from16 v123, v124

    .end local v124           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v123       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_56

    .line 526
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .restart local v126       #wifi:Lcom/android/server/WifiService;
    :catch_4b
    move-exception v71

    move-object/from16 v125, v126

    .end local v126           #wifi:Lcom/android/server/WifiService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_55

    .line 518
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v128       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4c
    move-exception v71

    move-object/from16 v127, v128

    .end local v128           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_54

    .line 510
    :catch_4d
    move-exception v71

    goto/16 :goto_53

    .line 500
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v90       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v91       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4e
    move-exception v71

    move-object/from16 v12, v91

    .end local v91           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_52

    .line 492
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v113       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4f
    move-exception v71

    move-object/from16 v112, v113

    .end local v113           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_51

    .line 457
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_50
    move-exception v71

    move-object/from16 v108, v109

    .end local v109           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_50

    .line 448
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_51
    move-exception v71

    move-object/from16 v72, v73

    .end local v73           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v72       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_4f

    .line 437
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_52
    move-exception v71

    move-object/from16 v65, v66

    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4e

    .line 429
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_53
    move-exception v71

    move-object/from16 v85, v86

    .end local v86           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4d

    .line 408
    .end local v88           #mountService:Lcom/android/server/MountService;
    .restart local v89       #mountService:Lcom/android/server/MountService;
    :catch_54
    move-exception v71

    move-object/from16 v88, v89

    .end local v89           #mountService:Lcom/android/server/MountService;
    .restart local v88       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4c

    .line 394
    .end local v88           #mountService:Lcom/android/server/MountService;
    :catch_55
    move-exception v3

    goto/16 :goto_11

    .line 364
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_56
    move-exception v71

    move-object/from16 v77, v78

    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4b

    .line 338
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v99       #power:Lcom/android/server/PowerManagerService;
    :catch_57
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v99

    .end local v99           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4a

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v96       #onlyCore:Z
    :catch_58
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4a

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v63           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v64       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_59
    move-exception v71

    move-object/from16 v63, v64

    .end local v64           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v63       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_4a

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    :catch_5b
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v71

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v71

    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :catch_5e
    move-exception v71

    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :catch_5f
    move-exception v71

    move-object/from16 v46, v47

    .end local v47           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v118, v119

    .end local v119           #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v81, v82

    .end local v82           #lights:Lcom/android/server/LightsService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .line 243
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    :catch_60
    move-exception v71

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_49

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v76           #firstBoot:Z
    .end local v96           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1f
    move-object/from16 v8, v90

    .end local v90           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_41

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v94           #notification:Lcom/android/server/NotificationManagerService;
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v76       #firstBoot:Z
    .restart local v82       #lights:Lcom/android/server/LightsService;
    .restart local v90       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v96       #onlyCore:Z
    .restart local v119       #vibrator:Lcom/android/server/VibratorService;
    :cond_20
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b
.end method
