.class public Lcom/samsung/lpp/LPPLoader;
.super Ljava/lang/Object;
.source "LPPLoader.java"


# static fields
.field private static final CLASS_LPPManagerService:Ljava/lang/String; = "com.samsung.lpp.LPPManagerService"

.field private static final METHOD_systemReady:Ljava/lang/String; = "systemReady"

.field private static final TAG:Ljava/lang/String; = "LPPManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    const-string v1, "com.samsung.lpp"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, apkContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static getLPPManager(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/samsung/lpp/ILPPManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPManager;

    move-result-object v1

    .line 60
    .local v1, service:Lcom/samsung/lpp/ILPPManager;
    if-nez v1, :cond_0

    .line 61
    const-string v2, "LPPManagerService"

    const-string v3, "returned null service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    new-instance v0, Lcom/samsung/lpp/LPPManager;

    invoke-direct {v0, v1}, Lcom/samsung/lpp/LPPManager;-><init>(Lcom/samsung/lpp/ILPPManager;)V

    .line 65
    .local v0, lppManager:Lcom/samsung/lpp/LPPManager;
    return-object v0
.end method

.method public static getLPPManagerService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, lppService:Landroid/os/IBinder;
    const-string v4, "com.samsung.lpp.LPPManagerService"

    invoke-static {p0, v4}, Lcom/samsung/lpp/LPPLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 48
    .local v3, lppServiceClass:Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 49
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v6

    .line 52
    .local v0, arglist:[Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #lppService:Landroid/os/IBinder;
    check-cast v2, Landroid/os/IBinder;

    .line 55
    .end local v0           #arglist:[Ljava/lang/Object;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    .restart local v2       #lppService:Landroid/os/IBinder;
    :cond_0
    return-object v2
.end method

.method public static systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 6
    .parameter "context"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 70
    const-string v3, "com.samsung.lpp.LPPManagerService"

    invoke-static {p0, v3}, Lcom/samsung/lpp/LPPLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, lppService:Ljava/lang/Class;
    invoke-static {p1}, Lcom/samsung/lpp/ILPPManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/lpp/ILPPManager;

    move-result-object v1

    .line 73
    .local v1, service:Lcom/samsung/lpp/ILPPManager;
    const-string v3, "systemReady"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 74
    .local v2, systemReady:Ljava/lang/reflect/Method;
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
