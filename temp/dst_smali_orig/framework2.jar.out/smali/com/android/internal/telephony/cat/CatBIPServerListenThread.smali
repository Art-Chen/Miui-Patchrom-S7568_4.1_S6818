.class Lcom/android/internal/telephony/cat/CatBIPServerListenThread;
.super Ljava/lang/Object;
.source "CatBIPServerListenTread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

.field mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

.field s:Ljava/net/Socket;

.field serverSocket:Ljava/net/ServerSocket;

.field volatile stopRequest:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 2
    .parameter "con"
    .parameter "bipManager"

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    const-string v3, "Server socket created."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    .local v1, bytesRead:I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v3, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    new-array v0, v3, [B

    .local v0, buffer:[B
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    const-string v3, "Connection Accepted"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    const-string v3, "Sending Channel Status event "

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v4, 0x2

    iput-byte v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    const-string v3, "Reading data from input stream..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytesRead=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], sendDataAvailable Event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const-string v3, "Reading data from input stream..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while handling connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    const-string v3, "Server thread stopped."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v2           #e:Ljava/lang/Exception;
    :goto_3
    return-void

    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while creating server socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :cond_3
    :try_start_5
    const-string v3, "Input stream end reached."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v4, 0x1

    iput-byte v4, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_5
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    :goto_6
    const-string v3, "Server thread stopped."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while closing connection socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_b
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    :goto_7
    :try_start_c
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_8
    const-string v4, "Server thread stopped."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while closing connection socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while closing server socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while closing connection socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while closing server socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while closing connection socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .end local v2           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while closing server socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8
.end method
