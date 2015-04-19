.class public final enum Landroid/hardware/fm/FmConsts$FmStepType;
.super Ljava/lang/Enum;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmStepType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fm/FmConsts$FmStepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fm/FmConsts$FmStepType;

.field public static final enum FM_STEP_100KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

.field public static final enum FM_STEP_50KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

.field public static final enum FM_STEP_UNKNOWN:Landroid/hardware/fm/FmConsts$FmStepType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Landroid/hardware/fm/FmConsts$FmStepType;

    const-string v1, "FM_STEP_50KHZ"

    invoke-direct {v0, v1, v2}, Landroid/hardware/fm/FmConsts$FmStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_50KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

    .line 27
    new-instance v0, Landroid/hardware/fm/FmConsts$FmStepType;

    const-string v1, "FM_STEP_100KHZ"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fm/FmConsts$FmStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_100KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

    .line 28
    new-instance v0, Landroid/hardware/fm/FmConsts$FmStepType;

    const-string v1, "FM_STEP_UNKNOWN"

    invoke-direct {v0, v1, v4}, Landroid/hardware/fm/FmConsts$FmStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_UNKNOWN:Landroid/hardware/fm/FmConsts$FmStepType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/fm/FmConsts$FmStepType;

    sget-object v1, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_50KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_100KHZ:Landroid/hardware/fm/FmConsts$FmStepType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_UNKNOWN:Landroid/hardware/fm/FmConsts$FmStepType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/fm/FmConsts$FmStepType;->$VALUES:[Landroid/hardware/fm/FmConsts$FmStepType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fm/FmConsts$FmStepType;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Landroid/hardware/fm/FmConsts$FmStepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fm/FmConsts$FmStepType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fm/FmConsts$FmStepType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/fm/FmConsts$FmStepType;->$VALUES:[Landroid/hardware/fm/FmConsts$FmStepType;

    invoke-virtual {v0}, [Landroid/hardware/fm/FmConsts$FmStepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fm/FmConsts$FmStepType;

    return-object v0
.end method
