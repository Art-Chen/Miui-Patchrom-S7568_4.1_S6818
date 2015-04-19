.class Landroid/net/ethernet/EthernetStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "EthernetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/EthernetStateTracker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 766
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    .line 767
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 768
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 772
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mMYHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v5

    monitor-enter v5

    .line 773
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 854
    :cond_0
    :goto_0
    monitor-exit v5

    .line 855
    return-void

    .line 775
    :pswitch_0
    const-string v4, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received configured events, stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HW: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$302(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 777
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setStackConnected(Z)V

    .line 778
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$800(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$702(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 782
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 783
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;I)V

    .line 785
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 786
    .local v2, lmsg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 854
    .end local v2           #lmsg:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 789
    :cond_1
    :try_start_1
    const-string v4, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stack connection OK but HW not connected @@@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    :pswitch_1
    const-string v4, "EthernetStateTracker"

    const-string v6, "received configured EVENT_INTERFACE_CONFIGURATION_FAILED"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$302(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 798
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setStackConnected(Z)V

    .line 800
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .line 801
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;I)V

    goto/16 :goto_0

    .line 805
    :pswitch_2
    const-string v4, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received connected events, stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HW: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$402(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 807
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setHWConnected(Z)V

    .line 808
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;I)V

    .line 812
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 813
    .restart local v2       #lmsg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 817
    .end local v2           #lmsg:Landroid/os/Message;
    :pswitch_3
    const-string v4, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received disconnected events, stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HW: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 819
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget v6, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;I)V

    .line 821
    :cond_2
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$402(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 822
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1202(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 823
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setHWConnected(Z)V

    .line 824
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 826
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    .line 828
    :cond_3
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$600(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 829
    .restart local v2       #lmsg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 833
    .end local v2           #lmsg:Landroid/os/Message;
    :pswitch_4
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mPHYup:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$1202(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 834
    const-string v4, "EthernetStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface up event, kick off connection request mHWConnected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1300(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 836
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v3

    .line 837
    .local v3, state:I
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    if-eq v3, v8, :cond_4

    .line 838
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v1

    .line 839
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 841
    :try_start_2
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #calls: Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z
    invoke-static {v4, v1}, Landroid/net/ethernet/EthernetStateTracker;->access$1400(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 850
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    .end local v3           #state:I
    :cond_4
    :goto_1
    :try_start_3
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v6, 0x1

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v4, v6}, Landroid/net/ethernet/EthernetStateTracker;->access$402(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 851
    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$500(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;

    move-result-object v4

    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker$MyHandler;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateTracker;->access$400(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/ethernet/EthernetManager;->setHWConnected(Z)V

    goto/16 :goto_0

    .line 842
    .restart local v1       #info:Landroid/net/ethernet/EthernetDevInfo;
    .restart local v3       #state:I
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
