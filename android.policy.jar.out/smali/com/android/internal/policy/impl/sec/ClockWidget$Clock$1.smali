.class Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ServiceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingStateChanged(Z)V
    .locals 1
    .parameter "isRoaming"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshTime()V

    .line 890
    return-void
.end method
