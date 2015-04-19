.class Lcom/android/server/enterprise/auditlog/PartialFileNode$1;
.super Ljava/util/TimerTask;
.source "PartialFileNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/auditlog/PartialFileNode;->tictacForDeprecation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fileSize:Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/PartialFileNode;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->fileSize:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->fileSize:Ljava/lang/Long;

    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    #calls: Lcom/android/server/enterprise/auditlog/PartialFileNode;->setChanged()V
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->access$000(Lcom/android/server/enterprise/auditlog/PartialFileNode;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->fileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->notifyObservers(Ljava/lang/Object;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->this$0:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->deleteObservers()V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;->cancel()Z

    .line 97
    return-void
.end method
