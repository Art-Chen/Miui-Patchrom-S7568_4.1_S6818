.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;
.super Ljava/lang/Object;
.source "PowerNotiParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;


# instance fields
.field private mAPStatus:I

.field protected mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IApPowerObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public display(Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    const-string v0, "================= Noti (Power) ================="

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    .line 72
    const-string v0, "Noti Type : AP Sleep"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_2

    .line 74
    const-string v0, "Noti Type : AP Wakeup"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    const/16 v1, -0x2d

    if-ne v0, v1, :cond_0

    .line 76
    const-string v0, "Noti Type : AP Reset"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyListener(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 118
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IApPowerObserver;

    .line 120
    .local v1, observer:Landroid/hardware/contextaware/manager/IApPowerObserver;
    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    .line 122
    invoke-interface {v1, p1}, Landroid/hardware/contextaware/manager/IApPowerObserver;->updateApPowerStatus(I)V

    goto :goto_0

    .line 125
    .end local v1           #observer:Landroid/hardware/contextaware/manager/IApPowerObserver;
    :cond_1
    return-void
.end method

.method public parse([BI)I
    .locals 5
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 44
    move v1, p2

    .line 46
    .local v1, tmpNext:I
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 47
    const/4 v2, -0x1

    .line 58
    :goto_0
    return v2

    .line 50
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, dispContextData:Landroid/os/Bundle;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .local v2, tmpNext:I
    aget-byte v3, p1, v1

    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    .line 53
    const-string v3, "Noti"

    iget v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->display(Landroid/os/Bundle;)V

    .line 56
    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mAPStatus:I

    invoke-virtual {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->notifyListener(I)V

    move v1, v2

    .line 58
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method
