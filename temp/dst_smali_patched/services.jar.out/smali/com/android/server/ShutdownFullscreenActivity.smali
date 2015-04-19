.class public Lcom/android/server/ShutdownFullscreenActivity;
.super Landroid/app/Activity;
.source "ShutdownFullscreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownFullScreenActivity"


# instance fields
.field private mConfirm:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeconds:I

.field private myHandler:Landroid/os/Handler;

.field private myRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/ShutdownFullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShutdownFullscreenActivity$1;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/ShutdownFullscreenActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/ShutdownFullscreenActivity$2;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    iput-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownFullscreenActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/ShutdownFullscreenActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ShutdownFullscreenActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    const-string v2, "ShutdownFullScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): confirm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/ShutdownFullscreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/server/ShutdownFullscreenActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/server/ShutdownFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, win:Landroid/view/Window;
    const/high16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x200080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/server/ShutdownFullscreenActivity;->setContentView(Landroid/view/View;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10401a6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10407e7

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ShutdownFullscreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x3

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/server/ShutdownFullscreenActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/server/ShutdownFullscreenActivity$3;

    invoke-direct {v5, p0}, Lcom/android/server/ShutdownFullscreenActivity$3;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-boolean v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->mConfirm:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/ShutdownFullscreenActivity$4;

    invoke-direct {v3, p0}, Lcom/android/server/ShutdownFullscreenActivity$4;-><init>(Lcom/android/server/ShutdownFullscreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
