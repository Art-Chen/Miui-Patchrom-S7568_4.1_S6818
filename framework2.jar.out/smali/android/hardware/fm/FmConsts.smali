.class public Landroid/hardware/fm/FmConsts;
.super Ljava/lang/Object;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fm/FmConsts$FmMuteMode;,
        Landroid/hardware/fm/FmConsts$FmAudioPath;,
        Landroid/hardware/fm/FmConsts$FmStepType;,
        Landroid/hardware/fm/FmConsts$FmSearchDirection;,
        Landroid/hardware/fm/FmConsts$FmAudioMode;,
        Landroid/hardware/fm/FmConsts$FmBand;
    }
.end annotation


# static fields
.field public static final FM_STATE_INVALID_VALUE:I = -0x100000

.field public static final FM_STATE_NO_ERROR:I = 0x0

.field public static final FM_STATE_UNINITIALIZED:I = -0x400

.field public static final FM_STATE_UNKNOWN:I = -0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
