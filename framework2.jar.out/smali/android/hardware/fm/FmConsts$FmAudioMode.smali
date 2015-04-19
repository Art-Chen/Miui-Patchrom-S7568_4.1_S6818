.class public final enum Landroid/hardware/fm/FmConsts$FmAudioMode;
.super Ljava/lang/Enum;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmAudioMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fm/FmConsts$FmAudioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fm/FmConsts$FmAudioMode;

.field public static final enum FM_AUDIO_MODE_AUTO:Landroid/hardware/fm/FmConsts$FmAudioMode;

.field public static final enum FM_AUDIO_MODE_MONO:Landroid/hardware/fm/FmConsts$FmAudioMode;

.field public static final enum FM_AUDIO_MODE_STEREO:Landroid/hardware/fm/FmConsts$FmAudioMode;

.field public static final enum FM_AUDIO_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    const-string v1, "FM_AUDIO_MODE_AUTO"

    invoke-direct {v0, v1, v2}, Landroid/hardware/fm/FmConsts$FmAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_AUTO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    .line 15
    new-instance v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    const-string v1, "FM_AUDIO_MODE_STEREO"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fm/FmConsts$FmAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_STEREO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    .line 16
    new-instance v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    const-string v1, "FM_AUDIO_MODE_MONO"

    invoke-direct {v0, v1, v4}, Landroid/hardware/fm/FmConsts$FmAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_MONO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    .line 17
    new-instance v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    const-string v1, "FM_AUDIO_MODE_UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/hardware/fm/FmConsts$FmAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioMode;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/fm/FmConsts$FmAudioMode;

    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_AUTO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_STEREO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_MONO:Landroid/hardware/fm/FmConsts$FmAudioMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioMode;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->$VALUES:[Landroid/hardware/fm/FmConsts$FmAudioMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fm/FmConsts$FmAudioMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fm/FmConsts$FmAudioMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fm/FmConsts$FmAudioMode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Landroid/hardware/fm/FmConsts$FmAudioMode;->$VALUES:[Landroid/hardware/fm/FmConsts$FmAudioMode;

    invoke-virtual {v0}, [Landroid/hardware/fm/FmConsts$FmAudioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fm/FmConsts$FmAudioMode;

    return-object v0
.end method
