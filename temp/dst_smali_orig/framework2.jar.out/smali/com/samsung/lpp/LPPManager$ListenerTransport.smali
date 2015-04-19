.class Lcom/samsung/lpp/LPPManager$ListenerTransport;
.super Lcom/samsung/lpp/ILPPListener$Stub;
.source "LPPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/lpp/LPPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_GEOFENCE_CL_EVENT:I = 0x5

.field private static final TYPE_GEOFENCE_CL_RESULT:I = 0x6

.field private static final TYPE_GEOFENCE_ENTERED:I = 0x1

.field private static final TYPE_GEOFENCE_EXITED:I = 0x2

.field private static final TYPE_ONDEMAND_REPORT:I = 0x7

.field private static final TYPE_STATUS_DISABLED:I = 0x4

.field private static final TYPE_STATUS_ENABLED:I = 0x3


# instance fields
.field private mListener:Lcom/samsung/lpp/LPPListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/lpp/LPPManager;


# direct methods
.method constructor <init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->this$0:Lcom/samsung/lpp/LPPManager;

    invoke-direct {p0}, Lcom/samsung/lpp/ILPPListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    new-instance v0, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;-><init>(Lcom/samsung/lpp/LPPManager$ListenerTransport;Lcom/samsung/lpp/LPPManager;)V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .local v0, enteringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-interface {v2, v0}, Lcom/samsung/lpp/LPPListener;->onGeoFenceEntered(Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v0           #enteringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .local v1, exitingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/LPPListener;->onGeoFenceExited(Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v1           #exitingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onStatusEnabled(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onStatusDisabled(I)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onGeoFenceDetected(I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onCurrentLocationGeoFenceResult(I)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->this$0:Lcom/samsung/lpp/LPPManager;

    iget-object v3, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-virtual {v2, v3}, Lcom/samsung/lpp/LPPManager;->removeGeoFence(Lcom/samsung/lpp/LPPListener;)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-interface {v3, v2}, Lcom/samsung/lpp/LPPListener;->onLocationReported(Landroid/location/Location;)V

    goto :goto_0

    nop

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

.method static synthetic access$000(Lcom/samsung/lpp/LPPManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onCurrentLocationGeoFenceResult(I)V
    .locals 2
    .parameter "result"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGeoFenceDetected(I)V
    .locals 2
    .parameter "direction"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGeoFenceEntered(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGeoFenceExited(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLocationReported(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStatusDisabled(I)V
    .locals 2
    .parameter "service"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStatusEnabled(I)V
    .locals 2
    .parameter "service"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
