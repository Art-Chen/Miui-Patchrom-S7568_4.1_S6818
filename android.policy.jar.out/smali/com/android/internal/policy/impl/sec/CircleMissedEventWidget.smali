.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$7;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;,
        Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final KTT_UMC_PKG:Ljava/lang/String;

.field private final LGU_UMC_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final REQ_INDEX_UMC_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsHoveringUIEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedCallMsg:Landroid/widget/LinearLayout;

.field private mMissedCallMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgList:Landroid/view/View;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"
    .parameter "configuration"

    .prologue
    const/4 v4, 0x0

    const v8, 0x102030f

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->DEBUG:Z

    .line 62
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 63
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 64
    const-string v3, "com.android.email"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 65
    const-string v3, "com.lguplus.u070pgpl"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->LGU_UMC_PKG:Ljava/lang/String;

    .line 66
    const-string v3, "com.kt.sip.call"

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->KTT_UMC_PKG:Ljava/lang/String;

    .line 72
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 73
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 74
    const/16 v3, 0x7b

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->REQ_INDEX_MSG:I

    .line 75
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->REQ_INDEX_UMC_MSG:I

    .line 77
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    .line 78
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 97
    sget-object v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    .line 99
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsTouchExplorationEnabled:Z

    .line 102
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    .line 103
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;

    .line 105
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsHoveringUIEnabled:Z

    .line 109
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 126
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 130
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090061

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->setGravity(I)V

    .line 135
    const v3, 0x1020311

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 136
    const v3, 0x1020314

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    .line 142
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, exploreByTouchMode:I
    if-ne v0, v6, :cond_3

    .line 146
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsTouchExplorationEnabled:Z

    .line 147
    const-string v3, "CircleMissedEventWidget"

    const-string v4, "explore by touch mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0           #exploreByTouchMode:I
    :cond_0
    :goto_0
    const v3, 0x1020310

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    .line 155
    const v3, 0x1020313

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 156
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    .line 159
    const v3, 0x1020312

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    .line 160
    const v3, 0x1020315

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 166
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 179
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 233
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 253
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$6;-><init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->updateMissedEvent()V

    .line 310
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 311
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 313
    :cond_2
    return-void

    .line 149
    .end local v1           #filter:Landroid/content/IntentFilter;
    .restart local v0       #exploreByTouchMode:I
    :cond_3
    const-string v3, "CircleMissedEventWidget"

    const-string v4, "explore by touch mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    .end local v0           #exploreByTouchMode:I
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsHoveringUIEnabled:Z

    .line 173
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-direct {v3, p1, p4}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    .line 174
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-direct {v3, p1, p4}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsHoveringUIEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)I
    .locals 6
    .parameter "mode"

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 421
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isLgtVoipModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    const-string v2, "CircleMissedEventWidget"

    const-string v3, "lgt voip!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_3

    .line 426
    const-string v2, "com.lguplus.u070pgpl"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 449
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_b

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 427
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_4

    .line 428
    const-string v2, "com.lguplus.u070pgpl"

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 429
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 430
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 432
    :cond_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMidDevice()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 433
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_6

    .line 434
    const-string v2, "com.kt.sip.call"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 435
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_7

    .line 436
    const-string v2, "com.kt.sip.call"

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 437
    :cond_7
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 438
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 441
    :cond_8
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_9

    .line 442
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 443
    :cond_9
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_a

    .line 444
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 445
    :cond_a
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 446
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 453
    :cond_b
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->updateMissedEvent()V

    .line 346
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 473
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 475
    :try_start_0
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_1
    :goto_1
    return-void

    .line 467
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_0

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 6

    .prologue
    const/16 v5, 0x3e7

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 379
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 380
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 382
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)I

    move-result v2

    .line 383
    sget-object v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)I

    move-result v3

    .line 385
    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_3

    if-ltz v2, :cond_3

    .line 386
    const/4 v0, 0x1

    .line 387
    if-le v2, v5, :cond_2

    .line 388
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    .line 397
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_5

    if-ltz v3, :cond_5

    .line 398
    const/4 v1, 0x1

    .line 399
    if-le v3, v5, :cond_4

    .line 400
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 409
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 414
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->updateMissedIcons()V

    .line 415
    return-void

    .line 390
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    goto :goto_0

    .line 392
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    .line 404
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 317
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_0

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->invalidate()V

    .line 342
    return-void

    .line 324
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 330
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->setVisibility(I)V

    .line 338
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    goto :goto_0
.end method


# virtual methods
.method public actionDown()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    const v1, 0x1080424

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 524
    return-void
.end method

.method public actionUp()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    const v1, 0x1080420

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 529
    return-void
.end method

.method public cleanTouchListener()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 356
    return-void
.end method

.method public getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    return-object v0
.end method

.method public getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 484
    const-string v0, ""

    .line 487
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, swipeMsg:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 490
    .end local v1           #swipeMsg:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #swipeMsg:Ljava/lang/String;
    goto :goto_0

    .line 495
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-le v2, v6, :cond_2

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f6

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 497
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-le v2, v6, :cond_3

    .line 498
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f7

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 499
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallCount:I

    if-ne v2, v6, :cond_4

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 501
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgCount:I

    if-ne v2, v6, :cond_5

    .line 502
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 504
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10406f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->updateMissedEvent()V

    .line 374
    return-void
.end method
