.class public Landroid/net/ethernet/EthernetMonitor;
.super Ljava/lang/Object;
.source "EthernetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/EthernetMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADD_ADDR:I = 0x14

.field private static final CONNECTED:I = 0x1

.field private static final DEL_LINK:I = 0x11

.field private static final DISCONNECTED:I = 0x2

.field private static final NEW_LINK:I = 0x10

.field private static final PHYUP:I = 0x3

.field private static final RM_ADDR:I = 0x15

.field private static final TAG:Ljava/lang/String; = "EthernetMonitor"

.field private static final connectedEvent:Ljava/lang/String; = "CONNECTED"

.field private static final disconnectedEvent:Ljava/lang/String; = "DISCONNECTED"


# instance fields
.field private mTracker:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    return-void
.end method

.method static synthetic access$000(Landroid/net/ethernet/EthernetMonitor;)Landroid/net/ethernet/EthernetStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    return-object v0
.end method


# virtual methods
.method public startMonitoring()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/ethernet/EthernetMonitor$MonitorThread;-><init>(Landroid/net/ethernet/EthernetMonitor;)V

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->start()V

    return-void
.end method
