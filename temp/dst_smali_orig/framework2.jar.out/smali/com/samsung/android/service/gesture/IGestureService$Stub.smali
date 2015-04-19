.class public abstract Lcom/samsung/android/service/gesture/IGestureService$Stub;
.super Landroid/os/Binder;
.source "IGestureService.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/IGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/gesture/IGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/gesture/IGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.gesture.IGestureService"

.field static final TRANSACTION_getProviderInfo:I = 0x5

.field static final TRANSACTION_getProviders:I = 0x4

.field static final TRANSACTION_printA:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetGestureService:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/gesture/IGestureService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.service.gesture.IGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/gesture/IGestureService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/gesture/IGestureService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/service/gesture/IGestureService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/gesture/IGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v4, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->resetGestureService(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->getProviders()Ljava/util/List;

    move-result-object v3

    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v6, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_6
    const-string v4, "com.samsung.android.service.gesture.IGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->printA()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
