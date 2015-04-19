.class Landroid/hardware/scontext/SContextService$2;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 674
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mScale:I

    .line 675
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v3, v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    .line 677
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getAirMotionMode()I

    move-result v0

    .line 679
    .local v0, airmotionMode:I
    if-ne v0, v4, :cond_2

    .line 680
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget v2, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget v2, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    const/16 v3, 0xb4

    if-ge v2, v3, :cond_1

    .line 681
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v4, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 682
    const-string v2, "SContextService"

    const-string v3, "AirMotion_Horizontal : Right"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x7

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v4

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v2, v3, v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    .line 716
    return-void

    .line 684
    :cond_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v5, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 685
    const-string v2, "SContextService"

    const-string v3, "AirMotion_Horizontal : Left"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 687
    :cond_2
    if-ne v0, v5, :cond_4

    .line 688
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget v2, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iget v2, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    const/16 v3, 0x10e

    if-ge v2, v3, :cond_3

    .line 689
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v8, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 690
    const-string v2, "SContextService"

    const-string v3, "AirMotion_Vertical : Up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_3
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v7, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 693
    const-string v2, "SContextService"

    const-string v3, "AirMotion_Vertical : Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_4
    if-nez v0, :cond_0

    .line 696
    iget-object v2, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v2, v2, v6

    float-to-int v2, v2

    int-to-char v1, v2

    .line 697
    .local v1, direction:C
    const/16 v2, 0x52

    if-ne v1, v2, :cond_5

    .line 698
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v7, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 699
    const-string v2, "SContextService"

    const-string v3, "AirMotion : Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_5
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_6

    .line 701
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v8, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 702
    const-string v2, "SContextService"

    const-string v3, "AirMotion : Up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_6
    const/16 v2, 0x44

    if-ne v1, v2, :cond_7

    .line 704
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v5, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 705
    const-string v2, "SContextService"

    const-string v3, "AirMotion : Left"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 706
    :cond_7
    const/16 v2, 0x55

    if-ne v1, v2, :cond_8

    .line 707
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v4, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 708
    const-string v2, "SContextService"

    const-string v3, "AirMotion : Right"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    :cond_8
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v2

    iput v6, v2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 711
    const-string v2, "SContextService"

    const-string v3, "AirMotion : Unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
