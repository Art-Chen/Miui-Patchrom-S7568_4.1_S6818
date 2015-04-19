.class public final enum Landroid/media/MediaPhone$CodecState;
.super Ljava/lang/Enum;
.source "MediaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodecState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/MediaPhone$CodecState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/MediaPhone$CodecState;

.field public static final enum CODEC_CLOSE:Landroid/media/MediaPhone$CodecState;

.field public static final enum CODEC_IDLE:Landroid/media/MediaPhone$CodecState;

.field public static final enum CODEC_OPEN:Landroid/media/MediaPhone$CodecState;

.field public static final enum CODEC_START:Landroid/media/MediaPhone$CodecState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/media/MediaPhone$CodecState;

    const-string v1, "CODEC_IDLE"

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPhone$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/MediaPhone$CodecState;->CODEC_IDLE:Landroid/media/MediaPhone$CodecState;

    new-instance v0, Landroid/media/MediaPhone$CodecState;

    const-string v1, "CODEC_OPEN"

    invoke-direct {v0, v1, v3}, Landroid/media/MediaPhone$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/MediaPhone$CodecState;->CODEC_OPEN:Landroid/media/MediaPhone$CodecState;

    new-instance v0, Landroid/media/MediaPhone$CodecState;

    const-string v1, "CODEC_START"

    invoke-direct {v0, v1, v4}, Landroid/media/MediaPhone$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    new-instance v0, Landroid/media/MediaPhone$CodecState;

    const-string v1, "CODEC_CLOSE"

    invoke-direct {v0, v1, v5}, Landroid/media/MediaPhone$CodecState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/MediaPhone$CodecState;->CODEC_CLOSE:Landroid/media/MediaPhone$CodecState;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/MediaPhone$CodecState;

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_IDLE:Landroid/media/MediaPhone$CodecState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_OPEN:Landroid/media/MediaPhone$CodecState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_CLOSE:Landroid/media/MediaPhone$CodecState;

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaPhone$CodecState;->$VALUES:[Landroid/media/MediaPhone$CodecState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/media/MediaPhone$CodecState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/media/MediaPhone$CodecState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPhone$CodecState;

    return-object v0
.end method

.method public static values()[Landroid/media/MediaPhone$CodecState;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaPhone$CodecState;->$VALUES:[Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v0}, [Landroid/media/MediaPhone$CodecState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaPhone$CodecState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Landroid/media/MediaPhone$2;->$SwitchMap$android$media$MediaPhone$CodecState:[I

    invoke-virtual {p0}, Landroid/media/MediaPhone$CodecState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "CODEC_IDLE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CODEC_IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CODEC_OPEN"

    goto :goto_0

    :pswitch_2
    const-string v0, "CODEC_START"

    goto :goto_0

    :pswitch_3
    const-string v0, "CODEC_CLOSE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
