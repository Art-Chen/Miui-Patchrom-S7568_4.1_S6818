.class final enum Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$5;
.super Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$500()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    :goto_0
    return-void

    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Long;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_0

    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_0

    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Double;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$502(D)D

    goto :goto_0

    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
