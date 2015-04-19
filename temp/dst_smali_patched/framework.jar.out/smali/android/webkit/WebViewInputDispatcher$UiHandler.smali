.class final Landroid/webkit/WebViewInputDispatcher$UiHandler;
.super Landroid/os/Handler;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field public static final MSG_CLICK:I = 0x4

.field public static final MSG_DISPATCH_UI_EVENTS:I = 0x1

.field public static final MSG_HIDE_TAP_HIGHLIGHT:I = 0x6

.field public static final MSG_HITTEST:I = 0x7

.field public static final MSG_LONG_PRESS:I = 0x3

.field public static final MSG_SHOW_TAP_HIGHLIGHT:I = 0x5

.field public static final MSG_WEBKIT_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewInputDispatcher;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage in UI Thread: event= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V
    invoke-static {v1, v5}, Landroid/webkit/WebViewInputDispatcher;->access$300(Landroid/webkit/WebViewInputDispatcher;Z)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V
    invoke-static {v1}, Landroid/webkit/WebViewInputDispatcher;->access$400(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postLongPress()V
    invoke-static {v1}, Landroid/webkit/WebViewInputDispatcher;->access$500(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postClick()V
    invoke-static {v1}, Landroid/webkit/WebViewInputDispatcher;->access$600(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V
    invoke-static {v1, v5}, Landroid/webkit/WebViewInputDispatcher;->access$700(Landroid/webkit/WebViewInputDispatcher;Z)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V
    invoke-static {v1, v4}, Landroid/webkit/WebViewInputDispatcher;->access$700(Landroid/webkit/WebViewInputDispatcher;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    iput-boolean v4, v1, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->handleHitTestMsg(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewInputDispatcher;->access$800(Landroid/webkit/WebViewInputDispatcher;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
