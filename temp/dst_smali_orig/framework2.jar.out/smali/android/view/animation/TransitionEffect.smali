.class public Landroid/view/animation/TransitionEffect;
.super Ljava/lang/Object;
.source "TransitionEffect.java"


# static fields
.field public static DOORFLIP1EFFECT:I

.field public static DOORFLIP2EFFECT:I

.field public static INWARDCUBEEFFECT:I

.field public static NUMBER_OF_EFFECTS:I

.field public static OUTWARDCUBEEFFECT:I

.field public static ROTATION3DEFFECT:I

.field public static ZOOMEFFECT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    sput v1, Landroid/view/animation/TransitionEffect;->NUMBER_OF_EFFECTS:I

    const/4 v0, 0x1

    sput v0, Landroid/view/animation/TransitionEffect;->ZOOMEFFECT:I

    const/4 v0, 0x2

    sput v0, Landroid/view/animation/TransitionEffect;->INWARDCUBEEFFECT:I

    const/4 v0, 0x3

    sput v0, Landroid/view/animation/TransitionEffect;->OUTWARDCUBEEFFECT:I

    const/4 v0, 0x4

    sput v0, Landroid/view/animation/TransitionEffect;->ROTATION3DEFFECT:I

    const/4 v0, 0x5

    sput v0, Landroid/view/animation/TransitionEffect;->DOORFLIP1EFFECT:I

    sput v1, Landroid/view/animation/TransitionEffect;->DOORFLIP2EFFECT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
