.class interface abstract Landroid/hardware/contextaware/manager/ICmdProcessFaultDetection;
.super Ljava/lang/Object;
.source "ICmdProcessFaultDetection.java"


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# virtual methods
.method public abstract getContextTypeOfFaultDetection()Ljava/lang/String;
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method public abstract getFaultDetectionResultValueNames()[Ljava/lang/String;
.end method
