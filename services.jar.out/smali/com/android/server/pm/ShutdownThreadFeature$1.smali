.class Lcom/android/server/pm/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 115
    const/16 v0, 0x1f4

    .line 118
    .local v0, PHONE_STATE_POLL_SLEEP_MSEC:I
    const-string v4, "sys.radio.shutdown"

    const-string v7, "true"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 125
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    const-string v4, "ShutdownThread"

    const-string v7, "!@Turning off radio..."

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_2
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    .line 149
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    const-string v4, "ShutdownThread"

    const-string v7, "Turning off radio2..."

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone2:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :cond_1
    :goto_3
    const-string v4, "ShutdownThread"

    const-string v7, "!@before Bluetooth"

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v4

    if-ne v4, v11, :cond_a

    :cond_2
    move v4, v5

    :goto_4
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 163
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    const-string v4, "ShutdownThread"

    const-string v7, "!@Disabling Bluetooth..."

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :cond_3
    :goto_5
    const-string v4, "ShutdownThread"

    const-string v7, "!@Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_7

    .line 185
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v4

    if-nez v4, :cond_4

    .line 187
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v4

    if-ne v4, v11, :cond_b

    move v4, v5

    :goto_7
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 202
    :cond_4
    :goto_8
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v4

    if-nez v4, :cond_5

    .line 204
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    if-ne v4, v5, :cond_c

    move v4, v5

    :goto_9
    invoke-static {v4}, Lcom/android/server/pm/ShutdownThreadFeature;->access$602(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 215
    :cond_5
    :goto_a
    const-string v3, ""

    .line 216
    .local v3, repPhoneOff:Ljava/lang/String;
    const-string v4, "ril.deviceOffRes"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_6

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 220
    const-string v4, "ShutdownThread"

    const-string v7, "!@PhoneOff req resp"

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 250
    :cond_6
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 251
    const-string v4, "ShutdownThread"

    const-string v7, "!@NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    aput-boolean v5, v4, v6

    .line 265
    .end local v3           #repPhoneOff:Ljava/lang/String;
    :cond_7
    return-void

    :cond_8
    move v4, v6

    .line 124
    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v7, "!@RemoteException during radio shutdown"

    invoke-static {v4, v7, v2}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 131
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto/16 :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_9
    move v4, v6

    .line 148
    goto/16 :goto_2

    .line 153
    :catch_1
    move-exception v2

    .line 154
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v4, v7, v2}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 155
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto/16 :goto_3

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_a
    move v4, v6

    .line 161
    goto/16 :goto_4

    .line 167
    :catch_2
    move-exception v2

    .line 168
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v7, "!@RemoteException during bluetooth shutdown"

    invoke-static {v4, v7, v2}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 169
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_5

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_b
    move v4, v6

    .line 187
    goto/16 :goto_7

    .line 189
    :catch_3
    move-exception v2

    .line 190
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v7, "!@RemoteException during bluetooth shutdown"

    invoke-static {v4, v7, v2}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 191
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_8

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_c
    move v4, v6

    .line 204
    goto :goto_9

    .line 205
    :catch_4
    move-exception v2

    .line 206
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v7, "RemoteException during NFC shutdown"

    invoke-static {v4, v7, v2}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 207
    invoke-static {v5}, Lcom/android/server/pm/ShutdownThreadFeature;->access$602(Z)Z

    goto/16 :goto_a

    .line 256
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v3       #repPhoneOff:Ljava/lang/String;
    :cond_d
    const-string v4, "ShutdownThread"

    const-string v7, "!@before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-wide/16 v7, 0x1f4

    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 262
    :goto_b
    const-string v4, "ShutdownThread"

    const-string v7, "!@after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v4, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@[Phone off retry:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radioOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bluetoothOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 259
    :catch_5
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "ShutdownThread"

    const-string v7, "shutdown radios exception!"

    invoke-static {v4, v7, v1}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_b
.end method
