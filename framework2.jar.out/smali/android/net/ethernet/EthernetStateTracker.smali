.class public Landroid/net/ethernet/EthernetStateTracker;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/EthernetStateTracker$1;,
        Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;,
        Landroid/net/ethernet/EthernetStateTracker$MyHandler;,
        Landroid/net/ethernet/EthernetStateTracker$checkWifiStateReceiver;
    }
.end annotation


# static fields
.field public static final EVENT_DHCP_START:I = 0x0

.field public static final EVENT_HW_CONNECTED:I = 0x3

.field public static final EVENT_HW_DISCONNECTED:I = 0x4

.field public static final EVENT_HW_PHYCONNECTED:I = 0x5

.field public static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x2

.field public static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x1

.field private static final LOCAL_LOG:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "ETHERNET"

.field private static final NOTIFY_ID:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EthernetStateTracker"

.field private static mIface:Ljava/lang/String;

.field private static mLinkUp:Z

.field private static sIfaceMatch:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

.field private mEM:Landroid/net/ethernet/EthernetManager;

.field private mEthConnected:Z

.field private mHWConnected:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceStopped:Z

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMYHandler:Landroid/os/Handler;

.field private mMonitor:Landroid/net/ethernet/EthernetMonitor;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkWifiInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPHYup:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceStarted:Z

.field private mStackConnected:Z

.field private mStartingDhcp:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiMac:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private sDnsPropNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, ""

    sput-object v0, Landroid/net/ethernet/EthernetStateTracker;->sIfaceMatch:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    const-string v4, "EthernetStateTracker"

    const-string v5, "Starts..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    .line 104
    new-instance v4, Landroid/net/NetworkInfo;

    const/16 v5, 0x9

    const-string v6, "ETHERNET"

    const-string v7, ""

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 105
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 106
    new-instance v4, Landroid/net/LinkCapabilities;

    invoke-direct {v4}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 108
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 109
    invoke-virtual {p0, v8}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    .line 111
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->initEthernetNative()I

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v4, "EthernetStateTracker"

    const-string v5, "Can not init ethernet device layers"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v4, "EthernetStateTracker"

    const-string v5, "Successed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    .line 119
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Ethernet Tracker Thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v4, Landroid/net/ethernet/EthernetStateTracker$MyHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/net/ethernet/EthernetStateTracker$MyHandler;-><init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    .line 123
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "DHCP Handler Thread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v4, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, v6}, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;-><init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    .line 127
    new-instance v4, Landroid/net/ethernet/EthernetMonitor;

    invoke-direct {v4, p0}, Landroid/net/ethernet/EthernetMonitor;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    .line 128
    new-instance v4, Landroid/net/DhcpInfo;

    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 129
    new-instance v4, Landroid/net/DhcpInfoInternal;

    invoke-direct {v4}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 130
    invoke-virtual {p0, v8}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    .line 132
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mNwService:Landroid/os/INetworkManagementService;

    .line 135
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/ethernet/EthernetStateTracker$checkWifiStateReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/net/ethernet/EthernetStateTracker$checkWifiStateReceiver;-><init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetStateTracker$1;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEthConnected:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/ethernet/EthernetStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/ethernet/EthernetStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z
    .locals 7
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    .line 311
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    .line 312
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    .line 313
    iput-boolean v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    .line 314
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dns2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dhcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger dhcp for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    invoke-virtual {v2, v5}, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 370
    :goto_0
    return v6

    .line 323
    :cond_0
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    .line 325
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfo;->ipAddress:I

    .line 326
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfo;->gateway:I

    .line 328
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfo;->netmask:I

    .line 329
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfo;->dns1:I

    .line 330
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v5, v2, Landroid/net/DhcpInfo;->dns2:I

    .line 332
    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ip manually "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v4}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_1
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 346
    .local v1, inetAddress:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v2, v3}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 347
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 348
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 349
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 351
    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ip manually mDhcpInfoInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    .end local v0           #event:I
    .end local v1           #inetAddress:Ljava/net/InetAddress;
    :cond_1
    const/4 v0, 0x2

    .line 340
    .restart local v0       #event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v4, 0x1

    .line 201
    sget-object v1, Landroid/net/ethernet/EthernetStateTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v2, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    monitor-enter v2

    .line 207
    :try_start_0
    sget-object v1, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    monitor-exit v2

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 209
    :cond_1
    :try_start_1
    sput-object p1, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    .line 210
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 214
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->reconnect()Z

    goto :goto_0
.end method

.method private interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v4, 0x0

    .line 221
    sget-object v1, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v1, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 228
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 229
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 230
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    const-string v1, ""

    sput-object v1, Landroid/net/ethernet/EthernetStateTracker;->mIface:Ljava/lang/String;

    goto :goto_0
.end method

.method private postNotification(I)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 682
    const-string v1, "notification"

    .line 683
    .local v1, ns:Ljava/lang/String;
    const-string v3, "EthernetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post event event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v3, v7}, Landroid/net/ethernet/EthernetManager;->setCheckConnecting(I)V

    .line 693
    if-eq p1, v6, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 695
    :cond_0
    const-string v3, "eth_state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v3, "previous_eth_state"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, resultprop:Ljava/lang/String;
    const-string v3, "ok"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 763
    .end local v2           #resultprop:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    if-eq p1, v8, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 710
    :cond_3
    const-string v3, "eth_state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v3, "previous_eth_state"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .restart local v2       #resultprop:Ljava/lang/String;
    const-string v3, "failed"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    goto :goto_0
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .locals 8
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 290
    if-nez p0, :cond_0

    .line 302
    :goto_0
    return v6

    .line 292
    :cond_0
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    .line 294
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v5           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 304
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 297
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 299
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 300
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 302
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    goto :goto_0
.end method


# virtual methods
.method public StartPolling()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "EthernetStateTracker"

    const-string v1, "start polling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetMonitor;->startMonitoring()V

    .line 410
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 542
    return-void
.end method

.method public getCheckConnecting()I
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, ret:I
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckConnecting mEM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getCheckConnecting()I

    move-result v0

    .line 246
    :cond_0
    return v0
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEthConnected:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkWifiInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const-string v0, "net.tcp.buffersize.default"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 419
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getTotalInterface()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyPhyConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "ifname"

    .prologue
    .line 900
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report interface is up HWConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCheckConnecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getCheckConnecting()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetManager;->getCheckConnecting()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 910
    :goto_0
    return-void

    .line 906
    :cond_0
    monitor-enter p0

    .line 907
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 908
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "ifname"
    .parameter "state"

    .prologue
    .line 912
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on dev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "EthernetStateTracker"

    const-string v1, "update network state tracker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    monitor-enter p0

    .line 916
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 918
    monitor-exit p0

    .line 920
    :cond_0
    return-void

    .line 916
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 493
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    return-void
.end method

.method public reconnect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :try_start_1
    iget-boolean v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    if-eqz v3, :cond_0

    .line 427
    monitor-exit p0

    .line 445
    :goto_0
    return v1

    .line 428
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    const-string v3, "EthernetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect getEthState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v5}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    .line 432
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v3}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 434
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .line 435
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethSetDefaultConf()V

    .line 438
    :cond_1
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
    move v1, v2

    .line 445
    goto :goto_0
.end method

.method public reconnectDualMMS(I)Z
    .locals 1
    .parameter "usingNetworkType"

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public resetInterface()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    .line 380
    .local v0, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 384
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 388
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->removeMessages(I)V

    .line 392
    :cond_0
    invoke-virtual {v0}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dhcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    const-string v1, "EthernetStateTracker"

    const-string v2, "Could not stop DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    .line 401
    monitor-exit p0

    .line 404
    .end local v0           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 401
    .restart local v0       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    return-void
.end method

.method public setCheckConnecting(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 251
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckConnecting mEM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v0, p1}, Landroid/net/ethernet/EthernetManager;->setCheckConnecting(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 575
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 479
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 679
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 561
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 562
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 474
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 675
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 578
    const-string v2, "EthernetStateTracker"

    const-string v3, "start to monitor the ethernet devices"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "ethernet"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ethernet/EthernetManager;

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    .line 581
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v1

    .line 582
    .local v1, state:I
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 583
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-nez v1, :cond_1

    .line 586
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .line 596
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 589
    .restart local v1       #state:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "EthernetStateTracker"

    const-string v3, "Wrong ethernet configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public stopInterface(Z)Z
    .locals 6
    .parameter "suspend"

    .prologue
    const/4 v5, 0x1

    .line 260
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v1

    .line 262
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    monitor-enter v3

    .line 265
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    .line 266
    const-string v2, "EthernetStateTracker"

    const-string v4, "stop dhcp and interface"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, ifname:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->removeMessages(I)V

    .line 272
    invoke-virtual {v1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dhcp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    const-string v2, "EthernetStateTracker"

    const-string v4, "Could not stop DHCP"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 279
    if-nez p1, :cond_1

    .line 280
    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 281
    :cond_1
    monitor-exit v3

    .line 285
    .end local v0           #ifname:Ljava/lang/String;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_2
    return v5

    .line 281
    .restart local v1       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->isTeardownRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    invoke-virtual {p0, v1}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    .line 453
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    move-result v0

    .line 455
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public teardownDualMMS(I)Z
    .locals 1
    .parameter "usingNetworkType"

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method
