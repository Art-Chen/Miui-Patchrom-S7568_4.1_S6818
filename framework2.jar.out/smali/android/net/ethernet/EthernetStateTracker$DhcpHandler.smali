.class Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "EthernetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 860
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    .line 861
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 862
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 867
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 896
    :goto_0
    return-void

    .line 869
    :pswitch_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;

    move-result-object v2

    monitor-enter v2

    .line 870
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1600(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 871
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ethernet/EthernetManager;->setCheckConnecting(I)V

    .line 872
    const-string v1, "EthernetStateTracker"

    const-string v3, "DhcpHandler: DHCP request started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z
    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1202(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 875
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1200(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    const/4 v0, 0x2

    .line 877
    .local v0, event:I
    const-string v1, "EthernetStateTracker"

    const-string v3, "DhcpHandler: no Phy connect"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_1
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 891
    .end local v0           #event:I
    :goto_2
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z
    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1302(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 892
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 879
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateTracker;->access$800(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    const/4 v0, 0x1

    .line 881
    .restart local v0       #event:I
    const-string v1, "EthernetStateTracker"

    const-string v3, "DhcpHandler: DHCP request succeeded"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 883
    .end local v0           #event:I
    :cond_1
    const/4 v0, 0x2

    .line 884
    .restart local v0       #event:I
    const-string v1, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 889
    .end local v0           #event:I
    :cond_2
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker$DhcpHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v3, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v1, v3}, Landroid/net/ethernet/EthernetStateTracker;->access$1602(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
