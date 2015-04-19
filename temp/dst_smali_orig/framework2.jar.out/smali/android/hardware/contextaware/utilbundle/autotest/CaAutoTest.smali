.class abstract Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.super Ljava/lang/Object;
.source "CaAutoTest.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;


# instance fields
.field private mDelayTime:I

.field private mStopFlag:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "delayTime"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->setDelayTime(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return-void
.end method


# virtual methods
.method protected getDelayTime()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    return v0
.end method

.method protected isStopTest()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return v0
.end method

.method public abstract run()V
.end method

.method protected setDelayTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    return-void
.end method

.method public setStopFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    iput-boolean p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return-void
.end method

.method public stopAutoTest()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return-void
.end method
