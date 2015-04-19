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
    .line 89
    iput-object p1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->this$0:Lcom/samsung/lpp/LPPManager;

    invoke-direct {p0}, Lcom/samsung/lpp/ILPPListener$Stub;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    .line 92
    new-instance v0, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;-><init>(Lcom/samsung/lpp/LPPManager$ListenerTransport;Lcom/samsung/lpp/LPPManager;)V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 150
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, enteringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-interface {v2, v0}, Lcom/samsung/lpp/LPPListener;->onGeoFenceEntered(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 156
    .end local v0           #enteringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 157
    .local v1, exitingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/LPPListener;->onGeoFenceExited(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 160
    .end local v1           #exitingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onStatusEnabled(I)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onStatusDisabled(I)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onGeoFenceDetected(I)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/samsung/lpp/LPPListener;->onCurrentLocationGeoFenceResult(I)V

    .line 170
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->this$0:Lcom/samsung/lpp/LPPManager;

    iget-object v3, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    invoke-virtual {v2, v3}, Lcom/samsung/lpp/LPPManager;->removeGeoFence(Lcom/samsung/lpp/LPPListener;)V

    goto :goto_0

    .line 175
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListener:Lcom/samsung/lpp/LPPListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-interface {v3, v2}, Lcom/samsung/lpp/LPPListener;->onLocationReported(Landroid/location/Location;)V

    goto :goto_0

    .line 150
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
    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onCurrentLocationGeoFenceResult(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 124
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 125
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method public onGeoFenceDetected(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 118
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
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
    .line 101
    .local p1, listName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 103
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
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
    .line 108
    .local p1, listName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public onLocationReported(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public onStatusDisabled(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 146
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method public onStatusEnabled(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 139
    iget-object v1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method
