.class public abstract Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
.super Landroid/os/Binder;
.source "ISimCardAuthenticationService.java"

# interfaces
.implements Lcom/orange/authentication/simcard/ISimCardAuthenticationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ISimCardAuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.orange.authentication.simcard.ISimCardAuthenticationService"

.field static final TRANSACTION_akaAuthentication:I = 0x3

.field static final TRANSACTION_getSimCardType:I = 0x1

.field static final TRANSACTION_gsmAuthentication:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {p0, p0, v0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/orange/authentication/simcard/ISimCardAuthenticationService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;

    move-result-object v2

    .local v2, _result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/orange/authentication/simcard/ServiceSimCardType;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :sswitch_2
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    move-result-object v2

    .local v2, _result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:[B
    .end local v2           #_result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :sswitch_3
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    move-result-object v2

    .local v2, _result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
