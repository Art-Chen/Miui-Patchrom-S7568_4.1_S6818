.class Landroid/media/MediaPhone$1;
.super Ljava/lang/Object;
.source "MediaPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPhone;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPhone;


# direct methods
.method constructor <init>(Landroid/media/MediaPhone;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone$1;->this$0:Landroid/media/MediaPhone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v1, "MediaPhone"

    const-string v2, "mThread E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPhone$1;->this$0:Landroid/media/MediaPhone;

    #calls: Landroid/media/MediaPhone;->native_waitRequestForAT()I
    invoke-static {v1}, Landroid/media/MediaPhone;->access$000(Landroid/media/MediaPhone;)I

    move-result v0

    .local v0, ret:I
    if-nez v0, :cond_1

    const-string v1, "MediaPhone"

    const-string v2, "vt_pipe ret error, exit thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "MediaPhone"

    const-string v2, "mThread X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "MediaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vt_pipe ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Landroid/media/MediaPhone$1;->this$0:Landroid/media/MediaPhone;

    #getter for: Landroid/media/MediaPhone;->mStopWaitRequestForAT:Z
    invoke-static {v1}, Landroid/media/MediaPhone;->access$100(Landroid/media/MediaPhone;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MediaPhone"

    const-string v2, "mStopWaitRequestForAT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
