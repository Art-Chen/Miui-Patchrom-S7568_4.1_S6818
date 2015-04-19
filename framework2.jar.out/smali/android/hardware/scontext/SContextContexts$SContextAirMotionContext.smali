.class public Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
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
    name = "SContextAirMotionContext"
.end annotation


# instance fields
.field protected mAngle:I

.field protected mDirection:I

.field protected mScale:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 191
    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mScale:I

    .line 192
    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    .line 193
    return-void
.end method
