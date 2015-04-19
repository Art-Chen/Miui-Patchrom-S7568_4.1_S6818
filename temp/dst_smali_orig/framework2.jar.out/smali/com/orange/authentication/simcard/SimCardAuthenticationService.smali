.class public Lcom/orange/authentication/simcard/SimCardAuthenticationService;
.super Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
.source "SimCardAuthenticationService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;,
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    }
.end annotation


# static fields
.field private static final AKA_ARRAYS_LENGTHS_SIZE:I = 0x2

.field private static final AKA_AUTH_HEADER_SIZE:I = 0x4

.field private static final AKA_AUTN_ARR_SIZE:I = 0x10

.field private static final AKA_RAND_ARR_SIZE:I = 0x10

.field private static final DBG:Z = true

.field private static final GSM_AUTH_HEADER_SIZE:I = 0x4

.field private static final GSM_RAND_ARR_SIZE:I = 0x10

.field private static final IPC_SEC_IMS_AUTH_CANNOT_PERFORM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_MAK_CODE_FAILURE:I = 0x3

.field private static final IPC_SEC_IMS_AUTH_NO_ERR:I = 0x0

.field private static final IPC_SEC_IMS_AUTH_SKIP_RESPONSE:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_SQN_FAIL:I = 0x4

.field private static final IPC_SEC_IMS_AUTH_SYNCH_FAIL:I = 0x5

.field private static final IPC_SEC_IMS_AUTH_TYPE_3G:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_TYPE_GSM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX:I = 0x6

.field private static final REQUEST_AKA_AUTH:I = 0x1

.field private static final REQUEST_GET_SIM_CARD_TYPE:I = 0x0

.field private static final REQUEST_GSM_AUTH:I = 0x2

.field private static final REQUEST_THREAD_NAME:Ljava/lang/String; = "SimCardAuhtServRequestThread"

.field private static final TAG:Ljava/lang/String; = "SERVICE_TEST"

.field private static final WAIT_TIMEOUT:I = 0x1f40


# instance fields
.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mRILrequestsHandler:Landroid/os/Handler;

.field private mRequestOriginatorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mSequenceNumber:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "commandsInterface"
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimCardAuhtServRequestThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private Loge(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Logi(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "requester"
    .parameter "reqInfoHead"

    .prologue
    const/4 v2, 0x0

    .local v2, isWaitException:Z
    const/4 v3, 0x0

    .local v3, waitExceptionString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " afterRILrequest invocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - going into WAIT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-wide/16 v6, 0x1f40

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Thread.currentThread().wait(WAIT_TIMEOUT): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait timeout - invalid response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1
.end method

.method private beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .locals 5
    .parameter "msg"
    .parameter "reqInfoHead"

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - can not obtain message from mRILrequestsHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    invoke-direct {v0, p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;)V

    .local v0, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->obtainSequenceNumber()I

    move-result v2

    iput v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iput v2, p1, Landroid/os/Message;->arg1:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeRILrequest with allocated seq number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - no memory to add requester to pull"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private byteArrayToInt(Ljava/nio/ByteBuffer;)I
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x4

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .local v3, bufferLength:I
    const/4 v1, 0x4

    .local v1, INT_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    return v6
.end method

.method private byteArrayToLong(Ljava/nio/ByteBuffer;)J
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .local v3, bufferLength:I
    const/16 v1, 0x8

    .local v1, LONG_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    return-wide v6
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    if-nez p1, :cond_0

    const-string v3, "null"

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    const/4 v2, 0x0

    .local v2, val:I
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #val:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkPermission()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    const-string v1, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .local v0, methodName:Ljava/lang/String;
    const-string v1, "access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0           #methodName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #methodName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAkaAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 20
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .local v7, error:Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v7, "response == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const-string v7, "response.obj == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "invalid aka response"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .local v10, invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ar.exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_3
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    const-string v7, "ar.result == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_4
    new-instance v17, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    invoke-direct/range {v17 .. v17}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>()V

    .local v17, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [B

    move-object/from16 v2, v18

    check-cast v2, [B

    .local v2, akaResponse:[B
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "akaResponse="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    const/4 v9, 0x0

    .local v9, index:I
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    aget-byte v18, v2, v9

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    add-int/lit8 v9, v9, 0x1

    aget-byte v16, v2, v9

    .local v16, response_error_type:I
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response type - Unexpected error type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v18, "response type - IPC_SEC_IMS_AUTH_NO_ERR"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :goto_1
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_2
    const-string v18, "response type - IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "unsupported context"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_3
    const-string v18, "response type - IPC_SEC_IMS_AUTH_CANNOT_PERFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "cannot perform"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_4
    const-string v18, "response type - IPC_SEC_IMS_AUTH_SQN_FAIL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .local v4, auts_len:I
    const/4 v5, 0x0

    .local v5, ck_len:I
    const/4 v8, 0x0

    .local v8, ik_len:I
    const/4 v11, 0x0

    .local v11, kc_len:I
    const/4 v12, 0x0

    .local v12, res_auts:[B
    const/4 v13, 0x0

    .local v13, res_ck:[B
    const/4 v14, 0x0

    .local v14, res_ik:[B
    const/4 v15, 0x0

    .local v15, res_kc:[B
    add-int/lit8 v9, v9, 0x1

    aget-byte v4, v2, v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "auts_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    if-lez v4, :cond_6

    new-array v12, v4, [B

    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-static {v2, v9, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v4, 0x3

    :cond_6
    if-eqz v12, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AUTS="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    if-nez v12, :cond_8

    const-string v18, "Since error type is SQN_FAIL we are retunring synch error with auts NULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :goto_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    invoke-direct {v10, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Throwable;
    const-string v18, "cannot copy auts "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Throwable;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Since error type is SQN_FAIL we are retunring synch error with auts = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    aget-byte v5, v2, v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ck_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    add-int/lit8 v9, v9, 0x1

    if-lez v5, :cond_a

    new-array v13, v5, [B

    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-static {v2, v9, v13, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v9, v5

    :cond_a
    if-eqz v13, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :cond_b
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    aget-byte v8, v2, v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ik_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    add-int/lit8 v9, v9, 0x1

    if-lez v8, :cond_c

    new-array v14, v8, [B

    const/16 v18, 0x0

    :try_start_2
    move/from16 v0, v18

    invoke-static {v2, v9, v14, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v9, v8

    :cond_c
    if-eqz v14, :cond_d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :cond_d
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    aget-byte v11, v2, v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "kc_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    add-int/lit8 v9, v9, 0x1

    if-lez v11, :cond_e

    new-array v15, v11, [B

    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-static {v2, v9, v15, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v9, v11

    :cond_e
    if-eqz v15, :cond_f

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KC="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :cond_f
    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setCk([B)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setIk([B)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setRes([B)V

    const-string v18, "successfully parsed response"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object/from16 v10, v17

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 14
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .local v5, error:Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v5, "response == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v12, :cond_2

    const-string v5, "response.obj == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ar.exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    check-cast v12, [B

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    :goto_1
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v12, "gsmResponse is null"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v12, :cond_5

    const-string v5, "ar.result == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    invoke-direct {v10}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>()V

    .local v10, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "invalid gsm response"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .local v8, invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v6, v12

    check-cast v6, [B

    .local v6, gsmResponse:[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    const/4 v7, 0x0

    .local v7, index:I
    array-length v12, v6

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    aget-byte v12, v6, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    add-int/lit8 v7, v7, 0x1

    aget-byte v12, v6, v7

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    const-string v12, "Unexpected error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v12, "No error reported"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    array-length v12, v6

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    add-int/lit8 v7, v7, 0x1

    aget-byte v11, v6, v7

    .local v11, sres_len:I
    add-int/lit8 v12, v11, 0x4

    array-length v13, v6

    if-le v12, v13, :cond_6

    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v11           #sres_len:I
    :pswitch_2
    const-string v12, "Rejection error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "cannot perform"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .restart local v11       #sres_len:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x2

    aget-byte v12, v6, v12

    add-int/lit8 v12, v12, 0x3

    aget-byte v9, v6, v12

    .local v9, kc_len:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len sres "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len kc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    if-eqz v11, :cond_7

    if-nez v9, :cond_8

    :cond_7
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "No Data returned"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_8
    add-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v9

    array-length v13, v6

    if-le v12, v13, :cond_9

    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    .local v2, Sres:I
    :try_start_0
    invoke-static {v6, v7, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToInt(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v7, v11, 0x3

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v0, 0x0

    .local v0, Kc:J
    :try_start_1
    invoke-static {v6, v7, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToLong(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    invoke-virtual {v10, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setSres(I)V

    invoke-virtual {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setKc(J)V

    const-string v12, "successfully parsed response"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object v8, v10

    goto/16 :goto_0

    .end local v0           #Kc:J
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert sres to int"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v0       #Kc:J
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert kc to long"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v1, "response == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    const-string v1, "response.obj == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    const-string v1, "ar.result == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    .local v2, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v3, 0x0

    .local v3, result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v1, "iccCardStatus.getCardState() == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_4
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v1, "switch(iccCardStatus.getCardState()) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_0
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :goto_1
    const-string v4, "successfully parsed response"

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v1, "iccCardStatus.getApplication(0) == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_5
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-nez v4, :cond_6

    const-string v1, "iccCardStatus.getApplication(0).app_type == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_6
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    const-string v1, "switch(iccCardStatus.getApplication(0).app_type) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    :pswitch_4
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    :pswitch_5
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    :pswitch_6
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    :pswitch_7
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private declared-synchronized obtainSequenceNumber()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 11
    .parameter "message"

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, msg:Landroid/os/Message;
    const/4 v0, 0x0

    .local v0, error:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, is3G:Z
    const/4 v2, 0x0

    .local v2, isSimReady:Z
    const/4 v5, 0x0

    .local v5, serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v6, 0x0

    .local v6, simTypeError:Ljava/lang/String;
    const-string v8, "Get sim type"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v7

    .local v7, sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    const-string v8, "Get sim type"

    invoke-direct {p0, v7, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    check-cast v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    if-nez v5, :cond_3

    const-string v6, "Get sim type - response is null"

    :cond_0
    :goto_0
    if-eqz v6, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET sim card type error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    const-string v8, "message.what - default"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v5

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v8

    sget-object v9, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    if-eq v8, v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get sim type mResponse.error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v6, "serviceSimCardType.getSimCardType() == null"

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$orange$authentication$simcard$SimCardAuthenticationManager$SimCardType:[I

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM card type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1           #is3G:Z
    .end local v2           #isSimReady:Z
    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .end local v6           #simTypeError:Ljava/lang/String;
    .end local v7           #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v1       #is3G:Z
    .restart local v2       #isSimReady:Z
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .restart local v6       #simTypeError:Ljava/lang/String;
    .restart local v7       #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_2
    if-nez v5, :cond_2

    :try_start_2
    new-instance v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v5, v8, v6}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    if-eqz v6, :cond_7

    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_7
    if-nez v2, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSM AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_8
    const-string v8, "Sending GSM"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-string v8, "GSM Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .local v4, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_9

    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_9
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const-string v8, "GSM Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_a
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .end local v4           #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_4
    if-eqz v6, :cond_b

    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_b
    if-nez v2, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AKA AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_c
    if-nez v1, :cond_d

    const-string v0, "modem or SIM card do not handle AKA authentication"

    invoke-direct {p0, v0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_d
    const-string v8, "Sending AKA"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-string v8, "AKA Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .restart local v4       #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_e

    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_e
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const-string v8, "AKA Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_f
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    .locals 8
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v2, 0x0

    .local v2, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v2, "Permission denied"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "rand is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    const-string v2, "autn is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v6, p1

    if-eq v6, v7, :cond_3

    const-string v2, "size of the rand array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    array-length v6, p2

    if-eq v6, v7, :cond_4

    const-string v2, "size of the autn array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v6, 0x28

    new-array v0, v6, [B

    .local v0, akaRequestData:[B
    const/4 v3, 0x0

    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x15

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x7

    aput-byte v6, v0, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x28

    aput-byte v6, v0, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x10

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x10

    :try_start_3
    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_4
    invoke-static {p2, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_5

    const-string v2, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_5
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    if-nez v2, :cond_1

    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v2       #message:Landroid/os/Message;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .locals 8
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "rand is null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    array-length v6, p1

    if-eq v6, v7, :cond_2

    const-string v1, "size of the rand array is not valid"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x14

    new-array v2, v6, [B

    .local v2, gsmRequestData:[B
    const/4 v3, 0x0

    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x15

    aput-byte v6, v2, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x0

    aput-byte v6, v2, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x14

    aput-byte v6, v2, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_3

    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage with seq number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, result:Ljava/lang/Object;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "respons.what default"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    const/4 v4, 0x0

    .end local v3           #result:Ljava/lang/Object;
    :goto_0
    return v4

    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v3           #result:Ljava/lang/Object;
    :goto_1
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    .local v1, element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    iget v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iget v7, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v7, :cond_0

    :try_start_2
    const-string v5, "notify"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v5, "notified"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :cond_1
    :goto_3
    :try_start_5
    monitor-exit v6

    goto :goto_0

    .end local v2           #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_1
    :try_start_6
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleGsmAuthResponse(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleAkaAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught throwable in handle response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #result:Ljava/lang/Object;
    .restart local v1       #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .restart local v2       #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught throwable while notifying: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
