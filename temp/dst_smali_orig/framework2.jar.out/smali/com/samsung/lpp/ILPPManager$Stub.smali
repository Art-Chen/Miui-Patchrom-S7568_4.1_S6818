.class public abstract Lcom/samsung/lpp/ILPPManager$Stub;
.super Landroid/os/Binder;
.source "ILPPManager.java"

# interfaces
.implements Lcom/samsung/lpp/ILPPManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/lpp/ILPPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/lpp/ILPPManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.lpp.ILPPManager"

.field static final TRANSACTION_getServiceStatus:I = 0x7

.field static final TRANSACTION_modifyGeoFence:I = 0x5

.field static final TRANSACTION_removeGeoFence:I = 0x3

.field static final TRANSACTION_removeGeoFenceByCL:I = 0x4

.field static final TRANSACTION_requestGeoFence:I = 0x1

.field static final TRANSACTION_requestGeoFenceByCL:I = 0x2

.field static final TRANSACTION_requestOnDemandLocation:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/lpp/ILPPManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.lpp.ILPPManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/lpp/ILPPManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/lpp/ILPPManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/lpp/ILPPManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/lpp/ILPPManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/lpp/LPPGeoFenceParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v2

    .local v2, _arg1:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/lpp/ILPPManager$Stub;->requestGeoFence(Ljava/util/List;Lcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    .end local v2           #_arg1:Lcom/samsung/lpp/ILPPListener;
    :sswitch_2
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v0

    .local v0, _arg0:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPManager$Stub;->requestGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/samsung/lpp/ILPPListener;
    :sswitch_3
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPManager$Stub;->removeGeoFence(Lcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/samsung/lpp/ILPPListener;
    :sswitch_4
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPManager$Stub;->removeGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/samsung/lpp/ILPPListener;
    :sswitch_5
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/lpp/LPPGeoFenceParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/lpp/LPPGeoFenceParameter;

    .local v0, _arg0:Lcom/samsung/lpp/LPPGeoFenceParameter;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v3

    .local v3, _arg2:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/lpp/ILPPManager$Stub;->modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/samsung/lpp/LPPGeoFenceParameter;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/samsung/lpp/ILPPListener;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/samsung/lpp/LPPGeoFenceParameter;
    goto :goto_1

    .end local v0           #_arg0:Lcom/samsung/lpp/LPPGeoFenceParameter;
    :sswitch_6
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/lpp/ILPPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPListener;

    move-result-object v0

    .local v0, _arg0:Lcom/samsung/lpp/ILPPListener;
    invoke-virtual {p0, v0}, Lcom/samsung/lpp/ILPPManager$Stub;->requestOnDemandLocation(Lcom/samsung/lpp/ILPPListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/samsung/lpp/ILPPListener;
    :sswitch_7
    const-string v6, "com.samsung.lpp.ILPPManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/lpp/ILPPManager$Stub;->getServiceStatus()I

    move-result v4

    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
