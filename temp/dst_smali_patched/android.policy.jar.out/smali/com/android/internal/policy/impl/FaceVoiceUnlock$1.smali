.class Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/FaceVoiceUnlock;->initWakeUpHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    :try_start_0
    const-string v1, "FULLockscreen"

    const-string v2, "Create and initialize WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    new-instance v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    invoke-direct {v2, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$002(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startVerify(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while startVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while terminateVerify WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "cleanUp destroy WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$200(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mVoiceVerifyStarted:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$202(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$000(Lcom/android/internal/policy/impl/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->destroy()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceVoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/FaceVoiceUnlock;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/FaceVoiceUnlock;->access$002(Lcom/android/internal/policy/impl/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FULLockscreen"

    const-string v2, "Error while terminating WakeUpCmdRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
