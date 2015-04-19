.class public Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static isConnectivityModeOn:I

.field private static isSimStatusOff:I

.field private static mContext:Landroid/content/Context;

.field private static mSimAlertDialog:Z

.field private static mobileDataOffAlertDialog:Z

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 77
    sput-object v3, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 107
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 109
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 111
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 113
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 115
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 117
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 119
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 121
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    .line 126
    sput-boolean v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mSimAlertDialog:Z

    .line 127
    sput-boolean v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlertDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 125
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    .line 71
    return-void
.end method

.method static synthetic access$1000()Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    return-object v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-boolean p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mSimAlertDialog:Z

    return p0
.end method

.method static synthetic access$600()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-object p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-boolean p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlertDialog:Z

    return p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 636
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 638
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0066

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 640
    const v1, 0x7f0b0069

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 642
    const v1, 0x7f0b006d

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 644
    const v1, 0x7f0b0071

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 646
    const v1, 0x7f0b0075

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 648
    const v1, 0x7f0b0079

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 651
    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 652
    return-object v0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1068
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1081
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1050
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1051
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 852
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 853
    const-class v1, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 854
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 856
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 857
    return-object v0
.end method

.method private static getOffState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 1092
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    .line 1093
    .local v4, wifiState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1094
    .local v0, btState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 1095
    .local v1, dataState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    .line 1096
    .local v3, syncState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    .line 1101
    .local v2, gpsState:I
    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-ne v1, v5, :cond_0

    sget v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v6, :cond_0

    sget v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-eqz v6, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v2, v5, :cond_2

    .line 1107
    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1003
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 1004
    .local v0, sync:Z
    return v0
.end method

.method private mobileDataOffAlert(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1144
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1146
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f04009a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1149
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0b01b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1151
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1167
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090841

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1168
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1169
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$2;

    invoke-direct {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$2;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1178
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$3;

    invoke-direct {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$3;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1184
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1186
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1187
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1188
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1189
    iget-object v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1193
    :goto_0
    iget-object v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1194
    return-void

    .line 1191
    :cond_1
    iget-object v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private simInsertAlert(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0908c5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v2, 0x7f0908c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1202
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1203
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$4;

    invoke-direct {v3, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$4;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1210
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1211
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    iget-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1216
    :goto_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1217
    return-void

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private toogleOffMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1111
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1113
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1115
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 1116
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 1118
    .local v3, sync:Z
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1119
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1120
    :cond_0
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1122
    :cond_1
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1123
    :cond_2
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1125
    :cond_3
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1126
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v5, :cond_4

    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-nez v5, :cond_4

    .line 1127
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1130
    :cond_4
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 1131
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1133
    :cond_5
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1134
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1136
    new-instance v2, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v2, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1141
    .end local v2           #intent_widget:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f02029d

    const v6, 0x7f0d001d

    const v5, 0x7f02029c

    const/4 v4, 0x0

    const v3, 0x7f0d001e

    .line 676
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 677
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 678
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 679
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 680
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 682
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 714
    :pswitch_0
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : WiFi state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    const v0, 0x7f0b007a

    const v1, 0x7f0202a7

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 720
    const v0, 0x7f0b007b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 721
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 727
    :goto_1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    const v0, 0x7f0b0076

    const v1, 0x7f0202a5

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 729
    const v0, 0x7f0b0077

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 730
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 736
    :goto_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 737
    const v0, 0x7f0b0067

    const v1, 0x7f0202a9

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 738
    const v0, 0x7f0b0068

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 743
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 745
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 781
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 782
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    .line 788
    :goto_4
    sget v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 789
    :cond_0
    const v0, 0x7f0b0072

    const v1, 0x7f0202a2

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 790
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 791
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 804
    :goto_5
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 837
    :pswitch_1
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : BT state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_6
    return-void

    .line 684
    :pswitch_2
    const v0, 0x7f0b006a

    const v1, 0x7f0202aa

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 685
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 687
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 690
    :pswitch_3
    const v0, 0x7f0b006a

    const v1, 0x7f0202ab

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 691
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 693
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 701
    :pswitch_4
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    const v0, 0x7f0b006a

    const v1, 0x7f0202ab

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 703
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 705
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 707
    :cond_1
    const v0, 0x7f0b006a

    const v1, 0x7f0202aa

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 708
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 710
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 723
    :cond_2
    const v0, 0x7f0b007a

    const v1, 0x7f0202a6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 724
    const v0, 0x7f0b007b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 725
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 732
    :cond_3
    const v0, 0x7f0b0076

    const v1, 0x7f0202a4

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 733
    const v0, 0x7f0b0077

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 734
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 740
    :cond_4
    const v0, 0x7f0b0067

    const v1, 0x7f0202a8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 741
    const v0, 0x7f0b0068

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 784
    :cond_5
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    goto/16 :goto_4

    .line 793
    :cond_6
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 794
    const v0, 0x7f0b0072

    const v1, 0x7f0202a3

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 795
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 796
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 798
    :cond_7
    const v0, 0x7f0b0072

    const v1, 0x7f0202a2

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 799
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 800
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 806
    :pswitch_5
    const v0, 0x7f0b006e

    const v1, 0x7f0202a0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 807
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 809
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 812
    :pswitch_6
    const v0, 0x7f0b006e

    const v1, 0x7f0202a1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 813
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 815
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 823
    :pswitch_7
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 824
    const v0, 0x7f0b006e

    const v1, 0x7f0202a1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 825
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 827
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 829
    :cond_8
    const v0, 0x7f0b006e

    const v1, 0x7f0202a0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 831
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 833
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 682
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 804
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 661
    invoke-static {p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 664
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 665
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 666
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 629
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 630
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 618
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 624
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 868
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, action:Ljava/lang/String;
    const-string v5, "ConnectivityLocationWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 872
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 981
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 982
    :cond_1
    return-void

    .line 873
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 874
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    :cond_3
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 876
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 886
    :cond_4
    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 888
    :cond_5
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 890
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 893
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 894
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 895
    :cond_7
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 896
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 897
    :cond_8
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 898
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 899
    :cond_9
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 900
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 901
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 903
    .local v1, buttonId:I
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    if-nez v5, :cond_0

    .line 904
    if-nez v1, :cond_a

    .line 905
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->toogleOffMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 906
    :cond_a
    if-ne v1, v9, :cond_d

    .line 907
    const-string v5, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CHC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "CMCC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_c

    .line 911
    const v5, 0x7f090236

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 914
    :cond_c
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 916
    :cond_d
    const/4 v5, 0x2

    if-ne v1, v5, :cond_e

    .line 918
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 919
    :cond_e
    const/4 v5, 0x3

    if-ne v1, v5, :cond_13

    .line 920
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-eq v5, v9, :cond_f

    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-ne v5, v9, :cond_11

    .line 921
    :cond_f
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_10

    .line 922
    const v5, 0x7f090f0f

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 925
    :cond_10
    sget-boolean v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mSimAlertDialog:Z

    if-nez v5, :cond_0

    .line 926
    sput-boolean v9, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mSimAlertDialog:Z

    .line 927
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->simInsertAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 931
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quickpanel_mobiledata_checked"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 933
    .local v4, mChecked:I
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    .line 934
    sget-boolean v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlertDialog:Z

    if-nez v5, :cond_0

    .line 935
    sput-boolean v9, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlertDialog:Z

    .line 936
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 940
    :cond_12
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 943
    .end local v4           #mChecked:I
    :cond_13
    const/4 v5, 0x4

    if-ne v1, v5, :cond_14

    .line 944
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 946
    :cond_14
    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 947
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 949
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 960
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 963
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 964
    :cond_16
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 965
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 967
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 607
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 609
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 610
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return-void
.end method
