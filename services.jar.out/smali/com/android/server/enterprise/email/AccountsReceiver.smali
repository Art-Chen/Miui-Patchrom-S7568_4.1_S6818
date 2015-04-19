.class public Lcom/android/server/enterprise/email/AccountsReceiver;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEmailIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mExchangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "AccountsReceiver"

    sput-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "cxt"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v1, Lcom/android/server/enterprise/email/AccountsReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$2;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mExchangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v1, Lcom/android/server/enterprise/email/AccountsReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$3;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mEmailIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.EXCHANGE_DELETE_NOT_VALIDATED_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mExchangeIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.EMAIL_DELETE_NOT_VALIDATED_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mEmailIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method
