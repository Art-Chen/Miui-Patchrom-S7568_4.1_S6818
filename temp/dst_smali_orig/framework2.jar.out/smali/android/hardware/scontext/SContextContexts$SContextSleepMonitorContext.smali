.class public Landroid/hardware/scontext/SContextContexts$SContextSleepMonitorContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextSleepMonitorContext"
.end annotation


# instance fields
.field protected mStageIndex:I

.field protected mStages:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextSleepMonitorContext;->mStageIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextContexts$SContextSleepMonitorContext;->mStages:[B

    return-void
.end method
