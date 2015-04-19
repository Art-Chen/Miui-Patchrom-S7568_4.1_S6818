.class public Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
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
    name = "SContextEnvironmentContext"
.end annotation


# instance fields
.field protected mHumidity:[D

.field protected mTemperature:[D


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v1, 0x64

    .local v1, nMaxSize:I
    new-array v2, v1, [D

    iput-object v2, p0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mTemperature:[D

    new-array v2, v1, [D

    iput-object v2, p0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mHumidity:[D

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mTemperature:[D

    aput-wide v3, v2, v0

    iget-object v2, p0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mHumidity:[D

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
