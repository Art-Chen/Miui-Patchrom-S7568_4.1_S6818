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
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    .line 77
    return-void
.end method

.method private getSimplePolicyPhoneId()I
    .locals 1

    .prologue
    .line 80
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
    .line 174
    return-void
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 3
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 85
    if-nez p3, :cond_0

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 87
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0           #i:I
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 94
    :cond_1
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 97
    :cond_2
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 100
    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 103
    :cond_4
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 106
    :cond_5
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_6

    .line 108
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 109
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0           #i:I
    :cond_6
    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_7

    .line 113
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 115
    :cond_7
    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_8

    .line 116
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 118
    :cond_8
    and-int/lit16 v1, p3, 0x100

    if-eqz v1, :cond_9

    .line 119
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 121
    :cond_9
    and-int/lit16 v1, p3, 0x200

    if-eqz v1, :cond_a

    .line 122
    iget-object v1, p0, Lcom/android/server/CompositeTelephonyRegistry;->mTelephonyRegistry:[Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Lcom/android/server/CompositeTelephonyRegistry;->getSimplePolicyPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 124
    :cond_a
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 2
    .parameter "cfi"

    .prologue
    .line 143
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallForwardingChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public notifyCallForwardingChangedByServiceClass(ZI)V
    .locals 2
    .parameter "cfi"
    .parameter "sc"

    .prologue
    .line 147
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallForwardingChangedByServiceClass"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 127
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCallState"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
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
    .line 178
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCellInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 2
    .parameter "cellLocation"

    .prologue
    .line 165
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyCellLocation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 151
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
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
    .line 157
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataConnection"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 161
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyDataConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 2
    .parameter "mwi"

    .prologue
    .line 139
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyMessageWaitingChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 2
    .parameter "otaspMode"

    .prologue
    .line 169
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyOtaspChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 131
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifyServiceState"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 135
    const-string v0, "CompositeTelephonyRegistry"

    const-string v1, "should not call CompositeTelephonyRegistry.notifySignalStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
