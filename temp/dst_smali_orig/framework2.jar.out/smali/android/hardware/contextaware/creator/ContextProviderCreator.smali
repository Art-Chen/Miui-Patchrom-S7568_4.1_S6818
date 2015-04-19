.class public abstract Landroid/hardware/contextaware/creator/ContextProviderCreator;
.super Ljava/lang/Object;
.source "ContextProviderCreator.java"


# static fields
.field private static sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

.field private static sContext:Landroid/content/Context;

.field private static sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setLooper(Landroid/os/Looper;)V

    invoke-static {p3}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    return-void
.end method

.method protected static getAPPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    return-object v0
.end method

.method protected static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected static getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private static setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 0
    .parameter "sAPPowerObservable"

    .prologue
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "sContext"

    .prologue
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static setLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "sLooper"

    .prologue
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 2
    .parameter "name"
    .parameter "isSubCollection"

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject()Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 2
    .parameter "name"
    .parameter "isSubCollection"
    .parameter "property"

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-gtz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 1
    .parameter "name"
    .parameter "property"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    .local v1, exist:Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
.end method
