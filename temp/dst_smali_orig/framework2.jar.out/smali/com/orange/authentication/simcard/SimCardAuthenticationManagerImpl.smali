.class public Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;
.super Ljava/lang/Object;
.source "SimCardAuthenticationManagerImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;
    }
.end annotation


# static fields
.field private static final PERM_DENIED_EX_MSG:Ljava/lang/String; = "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

.field private static final SERV_NOT_AVAIL_MSG:Ljava/lang/String; = "Service not available"


# instance fields
.field private mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "binder"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 4
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "Service not available"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2, p1, p2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceAkaAuthenticationResult$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "akaAuthentication result is null"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    new-instance v2, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v2

    :pswitch_3
    new-instance v2, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>()V

    throw v2

    :pswitch_4
    new-instance v2, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v2

    :pswitch_5
    new-instance v2, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getAuts()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v2

    :pswitch_6
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_7
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceSimCardType$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 4
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "Service not available"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2, p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceGsmAuthenticationResult$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "gsmAuthentication result is null"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    new-instance v2, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v2

    :pswitch_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_5
    new-instance v2, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v2

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isServiceReady()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
