.class public final enum Landroid/hardware/fm/FmConsts$FmBand;
.super Ljava/lang/Enum;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmBand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fm/FmConsts$FmBand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fm/FmConsts$FmBand;

.field public static final enum FM_BAND_EU:Landroid/hardware/fm/FmConsts$FmBand;

.field public static final enum FM_BAND_JP_STD:Landroid/hardware/fm/FmConsts$FmBand;

.field public static final enum FM_BAND_JP_WIDE:Landroid/hardware/fm/FmConsts$FmBand;

.field public static final enum FM_BAND_NA:Landroid/hardware/fm/FmConsts$FmBand;

.field public static final enum FM_BAND_UNKNOWN:Landroid/hardware/fm/FmConsts$FmBand;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/hardware/fm/FmConsts$FmBand;

    const-string v1, "FM_BAND_NA"

    invoke-direct {v0, v1, v2}, Landroid/hardware/fm/FmConsts$FmBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_NA:Landroid/hardware/fm/FmConsts$FmBand;

    new-instance v0, Landroid/hardware/fm/FmConsts$FmBand;

    const-string v1, "FM_BAND_EU"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fm/FmConsts$FmBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_EU:Landroid/hardware/fm/FmConsts$FmBand;

    new-instance v0, Landroid/hardware/fm/FmConsts$FmBand;

    const-string v1, "FM_BAND_JP_STD"

    invoke-direct {v0, v1, v4}, Landroid/hardware/fm/FmConsts$FmBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_JP_STD:Landroid/hardware/fm/FmConsts$FmBand;

    new-instance v0, Landroid/hardware/fm/FmConsts$FmBand;

    const-string v1, "FM_BAND_JP_WIDE"

    invoke-direct {v0, v1, v5}, Landroid/hardware/fm/FmConsts$FmBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_JP_WIDE:Landroid/hardware/fm/FmConsts$FmBand;

    new-instance v0, Landroid/hardware/fm/FmConsts$FmBand;

    const-string v1, "FM_BAND_UNKNOWN"

    invoke-direct {v0, v1, v6}, Landroid/hardware/fm/FmConsts$FmBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_UNKNOWN:Landroid/hardware/fm/FmConsts$FmBand;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/hardware/fm/FmConsts$FmBand;

    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_NA:Landroid/hardware/fm/FmConsts$FmBand;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_EU:Landroid/hardware/fm/FmConsts$FmBand;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_JP_STD:Landroid/hardware/fm/FmConsts$FmBand;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_JP_WIDE:Landroid/hardware/fm/FmConsts$FmBand;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_UNKNOWN:Landroid/hardware/fm/FmConsts$FmBand;

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/fm/FmConsts$FmBand;->$VALUES:[Landroid/hardware/fm/FmConsts$FmBand;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fm/FmConsts$FmBand;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/hardware/fm/FmConsts$FmBand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fm/FmConsts$FmBand;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fm/FmConsts$FmBand;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/fm/FmConsts$FmBand;->$VALUES:[Landroid/hardware/fm/FmConsts$FmBand;

    invoke-virtual {v0}, [Landroid/hardware/fm/FmConsts$FmBand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fm/FmConsts$FmBand;

    return-object v0
.end method
