.class Landroid/hardware/fm/FmService$ObserverHandler;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# instance fields
.field private mObserver:Landroid/os/IBinder;

.field private mPid:I

.field final synthetic this$0:Landroid/hardware/fm/FmService;


# direct methods
.method constructor <init>(Landroid/hardware/fm/FmService;Landroid/os/IBinder;I)V
    .locals 0
    .parameter
    .parameter "observer"
    .parameter "pid"

    .prologue
    .line 42
    iput-object p1, p0, Landroid/hardware/fm/FmService$ObserverHandler;->this$0:Landroid/hardware/fm/FmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Landroid/hardware/fm/FmService$ObserverHandler;->mObserver:Landroid/os/IBinder;

    .line 44
    iput p3, p0, Landroid/hardware/fm/FmService$ObserverHandler;->mPid:I

    .line 45
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Landroid/hardware/fm/FmService$ObserverHandler;->this$0:Landroid/hardware/fm/FmService;

    #getter for: Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/fm/FmService;->access$000(Landroid/hardware/fm/FmService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 49
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 50
    iget-object v1, p0, Landroid/hardware/fm/FmService$ObserverHandler;->this$0:Landroid/hardware/fm/FmService;

    invoke-virtual {v1}, Landroid/hardware/fm/FmService;->powerDown()Z

    .line 52
    :cond_0
    return-void
.end method

.method public getObserver()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/fm/FmService$ObserverHandler;->mObserver:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/hardware/fm/FmService$ObserverHandler;->mPid:I

    return v0
.end method
