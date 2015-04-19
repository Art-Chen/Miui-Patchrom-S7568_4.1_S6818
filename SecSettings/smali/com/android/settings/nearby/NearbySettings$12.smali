.class Lcom/android/settings/nearby/NearbySettings$12;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 973
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, action:Ljava/lang/String;
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: BroadcastReceiver onReceive(): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v28, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "android.net.ethernet.ETH_STATE_CHANGED"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 979
    :cond_0
    const-string v28, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 981
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v19

    .line 984
    .local v19, netInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    const-string v29, "wifip2p"

    #calls: Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v28 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 985
    .local v27, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v28, 0xd

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v20

    .line 988
    .local v20, netInfoP2p:Landroid/net/NetworkInfo;
    const-string v28, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 989
    const-string v28, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    .end local v19           #netInfo:Landroid/net/NetworkInfo;
    check-cast v19, Landroid/net/NetworkInfo;

    .line 996
    .restart local v19       #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 1008
    .local v4, bEthernetConnected:Z
    if-eqz v27, :cond_2

    if-eqz v19, :cond_2

    .line 1009
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: intent: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " state: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    if-nez v4, :cond_4

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/ProgressDialog;->cancel()V

    .line 1202
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #bEthernetConnected:Z
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v19           #netInfo:Landroid/net/NetworkInfo;
    .end local v20           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v27           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    :goto_1
    return-void

    .line 991
    .restart local v3       #action:Ljava/lang/String;
    .restart local v6       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v19       #netInfo:Landroid/net/NetworkInfo;
    .restart local v20       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v27       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_3
    const-string v28, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 992
    const-string v28, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    .end local v20           #netInfoP2p:Landroid/net/NetworkInfo;
    check-cast v20, Landroid/net/NetworkInfo;

    .restart local v20       #netInfoP2p:Landroid/net/NetworkInfo;
    goto/16 :goto_0

    .line 1025
    .restart local v4       #bEthernetConnected:Z
    :cond_4
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: STATE WIFI:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", P2P:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1196
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #bEthernetConnected:Z
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v19           #netInfo:Landroid/net/NetworkInfo;
    .end local v20           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v27           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v10

    .line 1197
    .local v10, e:Landroid/content/res/Resources$NotFoundException;
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: NotFoundException on broadcast receiver: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1031
    .end local v10           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v28, "com.android.settings.allshare.REFRESH"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1198
    .end local v3           #action:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1199
    .local v11, e1:Ljava/lang/Exception;
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: Exception on broadcast receiver: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1033
    .end local v11           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v28, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1035
    :cond_7
    const-string v28, "AllshareSetting"

    const-string v29, "AllshareSetting: media mount changed"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1040
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v28

    if-nez v28, :cond_9

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->getValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v28 .. v30}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1054
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1070
    :catch_2
    move-exception v10

    .line 1071
    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: refreshPreferenceValues() Storages :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1057
    .end local v10           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1074
    :cond_a
    :try_start_6
    const-string v28, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1075
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: com.android.settings.allshare.UPDATE_LIST "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ACCEPTLIST"

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v28, "ACCEPTLIST"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 1079
    .local v15, isAcceptList:Z
    const-string v28, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v14

    .line 1083
    .local v14, index:[I
    if-eqz v15, :cond_b

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v24

    .line 1089
    .local v24, preference:Landroid/preference/MultiSelectListPreference;
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 1090
    .local v12, entry:[Ljava/lang/CharSequence;
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 1091
    .local v21, newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    array-length v0, v14

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_c

    .line 1092
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: Index: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget v30, v14, v13

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    aget v30, v14, v13

    aget-object v30, v12, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    aget v28, v14, v13

    aget-object v28, v12, v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1086
    .end local v12           #entry:[Ljava/lang/CharSequence;
    .end local v13           #i:I
    .end local v21           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v24

    .restart local v24       #preference:Landroid/preference/MultiSelectListPreference;
    goto :goto_2

    .line 1095
    .restart local v12       #entry:[Ljava/lang/CharSequence;
    .restart local v13       #i:I
    .restart local v21       #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1096
    .end local v12           #entry:[Ljava/lang/CharSequence;
    .end local v13           #i:I
    .end local v14           #index:[I
    .end local v15           #isAcceptList:Z
    .end local v21           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_d
    const-string v28, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1097
    const-string v28, "AllshareSetting"

    const-string v29, "AllshareSetting: com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v28, "START"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 1101
    .local v16, isServerStarted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1104
    :cond_e
    const-string v28, "AllshareSetting"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AllshareSetting: INVALID FUNCTION STATE: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->access$1702(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1110
    .end local v16           #isServerStarted:Z
    :cond_f
    const-string v28, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1111
    const-string v28, "AllshareSetting"

    const-string v29, "AllshareSetting: REFRESH_DEVICE_LIST"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v28, "LIST"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1114
    .local v5, bIsAcceptedList:Z
    if-eqz v5, :cond_10

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    check-cast v9, Landroid/app/AlertDialog;

    .line 1118
    .local v9, dialog:Landroid/app/AlertDialog;
    if-eqz v9, :cond_2

    .line 1119
    const/16 v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v23

    .line 1120
    .local v23, positiveButton:Landroid/widget/Button;
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1122
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 1124
    .local v18, listView:Landroid/widget/ListView;
    if-eqz v18, :cond_2

    .line 1125
    new-instance v17, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1127
    .local v17, listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1129
    new-instance v8, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v8, v0, v9, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1131
    .local v8, deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1136
    .end local v8           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v9           #dialog:Landroid/app/AlertDialog;
    .end local v17           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v18           #listView:Landroid/widget/ListView;
    .end local v23           #positiveButton:Landroid/widget/Button;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    check-cast v9, Landroid/app/AlertDialog;

    .line 1139
    .restart local v9       #dialog:Landroid/app/AlertDialog;
    if-eqz v9, :cond_2

    .line 1140
    const/16 v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v23

    .line 1141
    .restart local v23       #positiveButton:Landroid/widget/Button;
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1143
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 1145
    .restart local v18       #listView:Landroid/widget/ListView;
    if-eqz v18, :cond_2

    .line 1146
    new-instance v17, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1148
    .restart local v17       #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1150
    new-instance v8, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v8, v0, v9, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1152
    .restart local v8       #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1160
    .end local v5           #bIsAcceptedList:Z
    .end local v8           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v9           #dialog:Landroid/app/AlertDialog;
    .end local v17           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v18           #listView:Landroid/widget/ListView;
    .end local v23           #positiveButton:Landroid/widget/Button;
    :cond_11
    const-string v28, "com.android.settings.allshare.SERVER_DB_UPDATE"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z
    invoke-static/range {v28 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1802(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1163
    const-string v28, "AUTO_START"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1165
    const-string v28, "AllshareSetting"

    const-string v29, "AllshareSetting: Auto start DMS!!"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v28

    const-string v29, "pref_allshare"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1170
    .local v25, sharedPreference:Landroid/content/SharedPreferences;
    const-string v28, "allshare_welcome_popup"

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1173
    .local v26, welcomePopup:Z
    if-nez v26, :cond_12

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1900(Lcom/android/settings/nearby/NearbySettings;)V

    .line 1176
    .end local v25           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v26           #welcomePopup:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    const-wide/16 v29, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v28 .. v30}, Lcom/android/settings/nearby/NearbySettings;->access$2002(Lcom/android/settings/nearby/NearbySettings;J)J

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v28 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1002(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "AutoDMS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v30, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v30 .. v30}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v30, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v30 .. v30}, Lcom/android/settings/nearby/NearbySettings;->access$2000(Lcom/android/settings/nearby/NearbySettings;)J

    move-result-wide v30

    sub-long v28, v28, v30

    const-wide/16 v30, 0x3e8

    cmp-long v28, v28, v30

    if-gez v28, :cond_13

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$2100(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0xbba

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1184
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$2100(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0xbba

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1188
    :cond_14
    const-string v28, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 1190
    .local v7, currentFlag:I
    const-string v28, "FLAG"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1192
    .local v22, otherFlag:I
    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$12;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$2100(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0xbbb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method
