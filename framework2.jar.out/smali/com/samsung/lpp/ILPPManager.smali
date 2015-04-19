.class public interface abstract Lcom/samsung/lpp/ILPPManager;
.super Ljava/lang/Object;
.source "ILPPManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/lpp/ILPPManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getServiceStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGeoFence(Lcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestGeoFence(Ljava/util/List;Lcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/lpp/LPPGeoFenceParameter;",
            ">;",
            "Lcom/samsung/lpp/ILPPListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestOnDemandLocation(Lcom/samsung/lpp/ILPPListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
