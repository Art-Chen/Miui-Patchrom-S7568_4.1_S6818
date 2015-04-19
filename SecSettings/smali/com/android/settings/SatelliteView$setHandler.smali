.class Lcom/android/settings/SatelliteView$setHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteView;


# direct methods
.method private constructor <init>(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SatelliteView;Lcom/android/settings/SatelliteView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/android/settings/SatelliteView$setHandler;-><init>(Lcom/android/settings/SatelliteView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const-wide v5, 0x412e848000000000L

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x3

    .line 703
    new-array v1, v11, [D

    .line 704
    .local v1, position:[D
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$300()D

    move-result-wide v3

    mul-double/2addr v3, v5

    aput-wide v3, v1, v13

    .line 705
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$400()D

    move-result-wide v3

    mul-double/2addr v3, v5

    aput-wide v3, v1, v12

    .line 707
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 709
    .local v0, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 752
    :goto_0
    return-void

    .line 711
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->startGPS()V

    .line 712
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 713
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 715
    iput v10, v0, Landroid/os/Message;->what:I

    .line 716
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$100()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 717
    invoke-virtual {p0, v12}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 721
    :pswitch_1
    sget v3, Lcom/android/settings/SatelliteView;->ani_count:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/settings/SatelliteView;->ani_count:I

    if-ltz v3, :cond_0

    .line 722
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    sget-wide v4, Lcom/android/settings/SatelliteView;->ani_gap_x:D

    sget v6, Lcom/android/settings/SatelliteView;->ani_count:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/android/settings/SatelliteView;->ani_gap_y:D

    neg-double v6, v6

    sget v8, Lcom/android/settings/SatelliteView;->ani_count:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/SatelliteView$SatelliteViewView;->setPoint(DD)V

    .line 723
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 724
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v10}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$1000(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 726
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    const v4, 0x7f090fcb

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$500()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    iget-object v6, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->mSpeed:D
    invoke-static {v6}, Lcom/android/settings/SatelliteView;->access$700(Lcom/android/settings/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$600()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v6, v6, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$2000(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    invoke-virtual {p0, v11}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 730
    iput v11, v0, Landroid/os/Message;->what:I

    .line 731
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$100()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 733
    .end local v2           #sSatelliteResult:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 734
    iput v10, v0, Landroid/os/Message;->what:I

    .line 735
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$100()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 736
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$2100()I

    move-result v3

    sput v3, Lcom/android/settings/SatelliteView;->ani_count:I

    goto/16 :goto_0

    .line 741
    :pswitch_2
    invoke-virtual {p0, v10}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 743
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 745
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    const v4, 0x7f090fcb

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$500()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    iget-object v6, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->mSpeed:D
    invoke-static {v6}, Lcom/android/settings/SatelliteView;->access$700(Lcom/android/settings/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$600()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    iget-object v6, v6, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .restart local v2       #sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$2000(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;

    move-result-object v3

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v10}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$1000(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 749
    iget-object v3, p0, Lcom/android/settings/SatelliteView$setHandler;->this$0:Lcom/android/settings/SatelliteView;

    #calls: Lcom/android/settings/SatelliteView;->diplayCompleted()V
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$2200(Lcom/android/settings/SatelliteView;)V

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
