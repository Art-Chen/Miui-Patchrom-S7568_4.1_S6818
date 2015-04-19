.class public interface abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;
.super Ljava/lang/Object;
.source "IApPowerObservable.java"


# static fields
.field public static final AP_NONE:B = 0x0t

.field public static final AP_RESET:B = -0x2dt

.field public static final AP_SLEEP:B = -0x2et

.field public static final AP_WAKEUP:B = -0x2ft


# virtual methods
.method public abstract notifyListener(I)V
.end method

.method public abstract registerListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
.end method

.method public abstract unregisterListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
.end method
