.class Lcom/android/providers/media/MediaProvider$9;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->recomendPesonRequest(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 7539
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$9;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7542
    const/4 v1, 0x0

    .line 7543
    .local v1, itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    sget v3, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v3, v6, v6}, Lcom/android/providers/media/NativeApi;->createFR(IZI)I

    move-result v0

    .line 7544
    .local v0, fr:I
    if-eqz v0, :cond_2

    .line 7545
    new-instance v2, Lcom/android/providers/media/RecommendFace;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/providers/media/RecommendFace;-><init>(Landroid/content/Context;I)V

    .line 7546
    .local v2, recommendFace:Lcom/android/providers/media/RecommendFace;
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7547
    :goto_0
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 7548
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3100(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7549
    :goto_1
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 7550
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    check-cast v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    .line 7551
    .restart local v1       #itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    iget v3, v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    iget v4, v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/media/RecommendFace;->recomendFaces(II)V

    .line 7552
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 7553
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3100(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7554
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$9;->val$uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 7556
    :cond_0
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3100(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/providers/media/RecommendFace;->recomendUnconfirmedFaces(Ljava/util/ArrayList;)V

    .line 7557
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$3100(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 7559
    :cond_1
    invoke-static {v0}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 7560
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$9;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.media.FACE_SCANNER_FINISHED"

    sget-object v6, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7562
    .end local v2           #recommendFace:Lcom/android/providers/media/RecommendFace;
    :cond_2
    return-void
.end method
