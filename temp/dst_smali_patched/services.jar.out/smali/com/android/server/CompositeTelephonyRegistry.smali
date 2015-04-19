.class Lcom/android/server/CompositeTelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "CompositeTelephonyRegistry.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompositeTelephonyRegistry"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .parameter "context"
    .parameter "telephonyRegistry"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    return-void
.end method

.method private getSimplePolicyPhoneId()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhoneId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    return-void
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 3
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_1
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_2
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_4
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_5
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_6
    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_7
    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_8
    and-int/lit16 v1, p3, 0x100

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_9
    and-int/lit16 v1, p3, 0x200

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    :cond_a
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 2
    .parameter "cfi"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallForwardingChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCallForwardingChangedByServiceClass(ZI)V
    .locals 2
    .parameter "cfi"
    .parameter "sc"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallForwardingChangedByServiceClass"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallState"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCellInfo(Landroid/telephony/CellInfo;)V
    .locals 2
    .parameter "cellInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCellInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 2
    .parameter "cellLocation"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCellLocation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 2
    .parameter "state"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 2
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataConnection"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 2
    .parameter "mwi"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyMessageWaitingChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 2
    .parameter "otaspMode"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyOtaspChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyServiceState"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifySignalStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
