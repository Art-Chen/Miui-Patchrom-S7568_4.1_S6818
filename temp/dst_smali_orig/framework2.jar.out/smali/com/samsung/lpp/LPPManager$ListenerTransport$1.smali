.class Lcom/samsung/lpp/LPPManager$ListenerTransport$1;
.super Landroid/os/Handler;
.source "LPPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/lpp/LPPManager$ListenerTransport;

.field final synthetic val$this$0:Lcom/samsung/lpp/LPPManager;


# direct methods
.method constructor <init>(Lcom/samsung/lpp/LPPManager$ListenerTransport;Lcom/samsung/lpp/LPPManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;->this$1:Lcom/samsung/lpp/LPPManager$ListenerTransport;

    iput-object p2, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;->val$this$0:Lcom/samsung/lpp/LPPManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager$ListenerTransport$1;->this$1:Lcom/samsung/lpp/LPPManager$ListenerTransport;

    #calls: Lcom/samsung/lpp/LPPManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;->access$000(Lcom/samsung/lpp/LPPManager$ListenerTransport;Landroid/os/Message;)V

    return-void
.end method
