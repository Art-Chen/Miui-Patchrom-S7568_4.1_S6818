.class Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;
.source "LibraryStressTest.java"


# instance fields
.field private mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "delayTime"

    .prologue
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;-><init>(I)V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest$1;-><init>(Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const-string v0, "context_aware"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;)V

    goto :goto_0
.end method

.method protected getType()I
    .locals 4

    .prologue
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .local v0, random:I
    const/4 v1, 0x0

    .local v1, type:I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    goto :goto_0

    :pswitch_1
    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    goto :goto_0

    :pswitch_2
    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected registerListener()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .local v0, type:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0
.end method

.method protected unregisterListener()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .local v0, type:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] unregister"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0
.end method
