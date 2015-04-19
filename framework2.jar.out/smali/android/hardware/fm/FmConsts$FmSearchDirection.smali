.class public final enum Landroid/hardware/fm/FmConsts$FmSearchDirection;
.super Ljava/lang/Enum;
.source "FmConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fm/FmConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmSearchDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fm/FmConsts$FmSearchDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fm/FmConsts$FmSearchDirection;

.field public static final enum FM_SEARCH_DOWN:Landroid/hardware/fm/FmConsts$FmSearchDirection;

.field public static final enum FM_SEARCH_UP:Landroid/hardware/fm/FmConsts$FmSearchDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;

    const-string v1, "FM_SEARCH_DOWN"

    invoke-direct {v0, v1, v2}, Landroid/hardware/fm/FmConsts$FmSearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;->FM_SEARCH_DOWN:Landroid/hardware/fm/FmConsts$FmSearchDirection;

    .line 22
    new-instance v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;

    const-string v1, "FM_SEARCH_UP"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fm/FmConsts$FmSearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;->FM_SEARCH_UP:Landroid/hardware/fm/FmConsts$FmSearchDirection;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/fm/FmConsts$FmSearchDirection;

    sget-object v1, Landroid/hardware/fm/FmConsts$FmSearchDirection;->FM_SEARCH_DOWN:Landroid/hardware/fm/FmConsts$FmSearchDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/fm/FmConsts$FmSearchDirection;->FM_SEARCH_UP:Landroid/hardware/fm/FmConsts$FmSearchDirection;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;->$VALUES:[Landroid/hardware/fm/FmConsts$FmSearchDirection;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fm/FmConsts$FmSearchDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fm/FmConsts$FmSearchDirection;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/hardware/fm/FmConsts$FmSearchDirection;->$VALUES:[Landroid/hardware/fm/FmConsts$FmSearchDirection;

    invoke-virtual {v0}, [Landroid/hardware/fm/FmConsts$FmSearchDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fm/FmConsts$FmSearchDirection;

    return-object v0
.end method
