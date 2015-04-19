.class public final enum Landroid/hardware/fm/FmConsts$FmMuteMode;
.super Ljava/lang/Enum;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmMuteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fm/FmConsts$FmMuteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fm/FmConsts$FmMuteMode;

.field public static final enum FM_MUTE_MODE_MUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;

.field public static final enum FM_MUTE_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmMuteMode;

.field public static final enum FM_MUTE_MODE_UNMUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Landroid/hardware/fm/FmConsts$FmMuteMode;

    const-string v1, "FM_MUTE_MODE_UNMUTE"

    invoke-direct {v0, v1, v2}, Landroid/hardware/fm/FmConsts$FmMuteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_UNMUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;

    .line 40
    new-instance v0, Landroid/hardware/fm/FmConsts$FmMuteMode;

    const-string v1, "FM_MUTE_MODE_MUTE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fm/FmConsts$FmMuteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_MUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;

    .line 41
    new-instance v0, Landroid/hardware/fm/FmConsts$FmMuteMode;

    const-string v1, "FM_MUTE_MODE_UNKNOWN"

    invoke-direct {v0, v1, v4}, Landroid/hardware/fm/FmConsts$FmMuteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmMuteMode;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/fm/FmConsts$FmMuteMode;

    sget-object v1, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_UNMUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_MUTE:Landroid/hardware/fm/FmConsts$FmMuteMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/fm/FmConsts$FmMuteMode;->FM_MUTE_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmMuteMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/fm/FmConsts$FmMuteMode;->$VALUES:[Landroid/hardware/fm/FmConsts$FmMuteMode;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fm/FmConsts$FmMuteMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Landroid/hardware/fm/FmConsts$FmMuteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fm/FmConsts$FmMuteMode;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fm/FmConsts$FmMuteMode;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/hardware/fm/FmConsts$FmMuteMode;->$VALUES:[Landroid/hardware/fm/FmConsts$FmMuteMode;

    invoke-virtual {v0}, [Landroid/hardware/fm/FmConsts$FmMuteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fm/FmConsts$FmMuteMode;

    return-object v0
.end method
