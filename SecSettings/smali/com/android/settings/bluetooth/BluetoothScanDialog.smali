.class public Lcom/android/settings/bluetooth/BluetoothScanDialog;
.super Landroid/app/Activity;
.source "BluetoothScanDialog.java"


# static fields
.field public static CancelBtn:Landroid/widget/Button;

.field public static ScanBtn:Landroid/widget/Button;

.field public static mBtScanDialog:Z

.field private static mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# instance fields
.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static ScanBtnStateUpdate()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtn:Landroid/widget/Button;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtn:Landroid/widget/Button;

    const v1, 0x7f09063a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, frame:Landroid/widget/FrameLayout;
    const v3, 0x7f0b0048

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 53
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    .line 54
    .local v2, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 55
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 56
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 58
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->CancelBtn:Landroid/widget/Button;

    .line 59
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->CancelBtn:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 60
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->CancelBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    const v3, 0x7f0b004b

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtn:Landroid/widget/Button;

    .line 71
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtn:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 72
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 73
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f04001e

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 42
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 43
    const-string v1, "BluetoothScanDialog"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothScanDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from bluetooth_scan_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 47
    const v1, 0x7f0901bd

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->setTitle(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    .line 117
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 118
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 120
    :cond_0
    return-void
.end method
