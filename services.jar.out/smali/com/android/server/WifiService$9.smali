.class Lcom/android/server/WifiService$9;
.super Landroid/telephony/PhoneStateListener;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 7
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/16 v6, 0xd

    .line 3571
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataConnectionStateChanged: state -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-string v3, "CRI"

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3577
    iget-object v3, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v3}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    .line 3578
    .local v2, wifiApState:I
    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    if-ne v2, v6, :cond_2

    .line 3581
    :cond_0
    const/4 v1, 0x5

    .line 3583
    .local v1, maxClientNum:I
    if-ne p2, v6, :cond_1

    .line 3584
    const/16 v1, 0xa

    .line 3588
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3596
    .end local v1           #maxClientNum:I
    .end local v2           #wifiApState:I
    :cond_2
    :goto_0
    if-ne p2, v6, :cond_3

    .line 3597
    const/4 v3, -0x2

    invoke-static {v3}, Lcom/android/server/WifiService;->access$1972(I)I

    .line 3601
    :goto_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Booster FLAG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/WifiService;->access$1900()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    iget-object v3, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->determineBoosterMode()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    .line 3604
    return-void

    .line 3589
    .restart local v1       #maxClientNum:I
    .restart local v2       #wifiApState:I
    :catch_0
    move-exception v0

    .line 3590
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3599
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #maxClientNum:I
    .end local v2           #wifiApState:I
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/WifiService;->access$1976(I)I

    goto :goto_1
.end method
