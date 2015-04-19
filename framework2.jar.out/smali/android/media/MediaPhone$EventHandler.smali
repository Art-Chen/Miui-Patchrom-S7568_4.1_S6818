.class Landroid/media/MediaPhone$EventHandler;
.super Landroid/os/Handler;
.source "MediaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPhone:Landroid/media/MediaPhone;

.field final synthetic this$0:Landroid/media/MediaPhone;


# direct methods
.method public constructor <init>(Landroid/media/MediaPhone;Landroid/media/MediaPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 716
    iput-object p1, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    .line 717
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 718
    iput-object p2, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    .line 719
    return-void
.end method

.method private internalResendMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 723
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "resend"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 725
    .local v2, tempMsg:Landroid/os/Message;
    if-nez v2, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 729
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 737
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mNativeContext:I
    invoke-static {v9}, Landroid/media/MediaPhone;->access$200(Landroid/media/MediaPhone;)I

    move-result v9

    if-nez v9, :cond_1

    .line 738
    const-string v9, "MediaPhone"

    const-string v10, "mediaphone went away with unhandled events"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 746
    .local v0, ar:Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 892
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown message type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :sswitch_0
    const-string v9, "MediaPhone"

    const-string v10, "receive MEDIA_PREPARED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/MediaPhone;->codec(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    .line 759
    :sswitch_1
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$300(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 760
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$300(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPhone;II)V

    goto :goto_0

    .line 766
    :sswitch_2
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v3, 0x0

    .line 768
    .local v3, error_was_handled:Z
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$400(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnErrorListener;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 769
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$400(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnErrorListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnErrorListener;->onError(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    move-result v3

    .line 771
    :cond_2
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    #calls: Landroid/media/MediaPhone;->stayAwake(Z)V
    invoke-static {v9, v10}, Landroid/media/MediaPhone;->access$500(Landroid/media/MediaPhone;Z)V

    goto/16 :goto_0

    .line 777
    .end local v3           #error_was_handled:Z
    :sswitch_3
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Info ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$600(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnMediaInfoListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 779
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$600(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnMediaInfoListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnMediaInfoListener;->onMediaInfo(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 792
    :sswitch_4
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 793
    .local v2, e:Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 794
    instance-of v9, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v9, :cond_4

    .line 801
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaPhone$EventHandler;->internalResendMessage(Landroid/os/Message;)V

    .line 802
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    #calls: Landroid/media/MediaPhone;->stayAwake(Z)V
    invoke-static {v9, v10}, Landroid/media/MediaPhone;->access$500(Landroid/media/MediaPhone;Z)V

    goto/16 :goto_0

    .line 797
    :cond_4
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(), other exceptions"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 806
    .end local v2           #e:Ljava/lang/Throwable;
    :sswitch_5
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 807
    .local v4, indication:Ljava/lang/String;
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_DATA), indication: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    .end local v4           #indication:Ljava/lang/String;
    :sswitch_6
    if-nez v0, :cond_5

    .line 813
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(MEDIA_UNSOL_CODEC), ar == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :cond_5
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 817
    .local v5, params:[I
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_CODEC), params: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCodecCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mCodecCount:I
    invoke-static {v11}, Landroid/media/MediaPhone;->access$700(Landroid/media/MediaPhone;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 819
    array-length v9, v5

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 820
    const/4 v9, 0x2

    aget v9, v5, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 821
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x3

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPhone;->setDecodeType(I)V

    .line 822
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    invoke-static {v9}, Landroid/media/MediaPhone;->access$708(Landroid/media/MediaPhone;)I

    .line 827
    :goto_1
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPhone;->onCodecRequest(II)V

    goto/16 :goto_0

    .line 824
    :cond_6
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x3

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Landroid/media/MediaPhone;->setEncodeType(I)V

    .line 825
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    invoke-static {v9}, Landroid/media/MediaPhone;->access$708(Landroid/media/MediaPhone;)I

    goto :goto_1

    .line 830
    :cond_7
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPhone;->onCodecRequest(II)V

    goto/16 :goto_0

    .line 836
    .end local v5           #params:[I
    :sswitch_7
    if-nez v0, :cond_8

    .line 837
    const-string v9, "MediaPhone"

    const-string v10, "handleMessage(MEDIA_UNSOL_STR), ar == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 841
    :cond_8
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 842
    .local v6, str:Ljava/lang/String;
    const-string v9, "MediaPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(MEDIA_UNSOL_STR), str == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v9, "open_:camera_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 845
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 846
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x65

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 848
    :cond_9
    const-string v9, "close_:camera_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 849
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 850
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x64

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 852
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 853
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 854
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x66

    invoke-interface {v9, v10, v11, v6}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 861
    .end local v6           #str:Ljava/lang/String;
    :sswitch_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 862
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v1, v5, v9

    .line 863
    .local v1, datatype:I
    const/4 v9, 0x1

    aget v7, v5, v9

    .line 864
    .local v7, sw:I
    const/4 v4, 0x0

    .line 866
    .local v4, indication:I
    array-length v9, v5

    const/4 v10, 0x2

    if-le v9, v10, :cond_b

    .line 867
    const/4 v9, 0x2

    aget v4, v5, v9

    .line 869
    :cond_b
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 875
    .end local v1           #datatype:I
    .end local v4           #indication:I
    .end local v5           #params:[I
    .end local v7           #sw:I
    :sswitch_9
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 876
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v8, v5, v9

    .line 877
    .local v8, timer:I
    goto/16 :goto_0

    .line 881
    .end local v5           #params:[I
    .end local v8           #timer:I
    :sswitch_a
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v5, v9

    check-cast v5, [I

    .line 882
    .restart local v5       #params:[I
    const/4 v9, 0x0

    aget v4, v5, v9

    .line 883
    .restart local v4       #indication:I
    goto/16 :goto_0

    .line 887
    .end local v4           #indication:I
    .end local v5           #params:[I
    :sswitch_b
    iget-object v9, p0, Landroid/media/MediaPhone$EventHandler;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;
    invoke-static {v9}, Landroid/media/MediaPhone;->access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPhone$EventHandler;->mMediaPhone:Landroid/media/MediaPhone;

    const/16 v11, 0x6c

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 746
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0xf -> :sswitch_4
        0x10 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method
