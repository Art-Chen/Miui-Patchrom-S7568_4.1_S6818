.class public Lcom/android/internal/policy/impl/sec/inkeffect/Indices;
.super Ljava/lang/Object;
.source "Indices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/inkeffect/Indices$Prog;
    }
.end annotation


# static fields
.field public static final MAX_HANDLER:I = 0xf

.field public static final TEXTURE_HANDLE:I = 0x8

.field public static final g_progHandlers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xf

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/sec/inkeffect/Indices;->g_progHandlers:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
