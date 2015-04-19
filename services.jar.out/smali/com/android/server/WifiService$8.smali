.class Lcom/android/server/WifiService$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 1908
    iput-object p1, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2094
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2047
    const/4 v0, 0x2

    .line 2056
    .local v0, wifiSleepPolicy:I
    iget-object v2, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2061
    if-ne v0, v4, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v1

    .line 2064
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 2070
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$8;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1913
    .local v3, action:Ljava/lang/String;
    const-wide/32 v8, 0xdbba0

    .line 1920
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wifi_idle_ms"

    const-wide/32 v18, 0xdbba0

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "stay_on_while_plugged_in"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1927
    .local v13, stayAwakeConditions:I
    const-string v16, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1928
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1929
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_ON"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1937
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 1938
    .local v10, msg:Landroid/os/Message;
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->what:I

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    .line 2036
    .end local v10           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1943
    :cond_2
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1944
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1945
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_OFF"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;Z)Z

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1960
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v18, v18, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1964
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1970
    :cond_6
    const-string v16, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 1979
    :cond_7
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1987
    const-string v16, "plugged"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1988
    .local v11, pluggedType:I
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1989
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/android/server/WifiService$8;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1993
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v8

    .line 1994
    .local v14, triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1995
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2001
    .end local v14           #triggerTime:J
    :cond_a
    if-nez v11, :cond_b

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v17

    monitor-enter v17

    .line 2003
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 2004
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v11}, Lcom/android/server/WifiService;->access$2802(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2004
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 2007
    .end local v11           #pluggedType:I
    :cond_c
    const-string v16, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2008
    const-string v16, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2010
    .local v12, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 2011
    .end local v12           #state:I
    :cond_d
    const-string v16, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const-string v17, "phoneinECMState"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3002(Lcom/android/server/WifiService;Z)Z

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2014
    :cond_e
    const-string v16, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2015
    const-string v16, "ABSENT"

    const-string v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2017
    const-string v16, "WifiService"

    const-string v17, "sim is removed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    .line 2019
    .local v6, currentId:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_1

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 2021
    .local v5, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_1

    .line 2022
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_f
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2023
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v6, :cond_f

    .line 2024
    const-string v16, "AKA"

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2025
    const-string v16, "WifiService"

    const-string v17, "disconnect aka ap."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WifiService;->disconnect()V

    goto :goto_1
.end method
