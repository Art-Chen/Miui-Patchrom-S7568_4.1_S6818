.class Landroid/net/ethernet/EthernetMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "EthernetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetMonitor;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/EthernetMonitor;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->this$0:Landroid/net/ethernet/EthernetMonitor;

    const-string v0, "EthMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method handleEvent(Ljava/lang/String;I)V
    .locals 2
    .parameter "ifname"
    .parameter "event"

    .prologue
    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->this$0:Landroid/net/ethernet/EthernetMonitor;

    #getter for: Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v0}, Landroid/net/ethernet/EthernetMonitor;->access$000(Landroid/net/ethernet/EthernetMonitor;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/ethernet/EthernetStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->this$0:Landroid/net/ethernet/EthernetMonitor;

    #getter for: Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v0}, Landroid/net/ethernet/EthernetMonitor;->access$000(Landroid/net/ethernet/EthernetMonitor;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/ethernet/EthernetStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->this$0:Landroid/net/ethernet/EthernetMonitor;

    #getter for: Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v0}, Landroid/net/ethernet/EthernetMonitor;->access$000(Landroid/net/ethernet/EthernetMonitor;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/ethernet/EthernetStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->this$0:Landroid/net/ethernet/EthernetMonitor;

    #getter for: Landroid/net/ethernet/EthernetMonitor;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v0}, Landroid/net/ethernet/EthernetMonitor;->access$000(Landroid/net/ethernet/EthernetMonitor;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ethernet/EthernetStateTracker;->notifyPhyConnected(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 7

    .prologue
    :cond_0
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .local v2, eventName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, events:[Ljava/lang/String;
    array-length v5, v3

    .local v5, index:I
    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-eqz v5, :cond_0

    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_0

    const/4 v1, 0x0

    .local v1, event:I
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, cmd:I
    const/16 v6, 0x11

    if-ne v0, v6, :cond_2

    const/4 v1, 0x2

    aget-object v6, v3, v4

    invoke-virtual {p0, v6, v1}, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    const/16 v6, 0x14

    if-ne v0, v6, :cond_3

    const/4 v1, 0x1

    aget-object v6, v3, v4

    invoke-virtual {p0, v6, v1}, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/16 v6, 0x10

    if-ne v0, v6, :cond_1

    const/4 v1, 0x3

    aget-object v6, v3, v4

    invoke-virtual {p0, v6, v1}, Landroid/net/ethernet/EthernetMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_1
.end method
