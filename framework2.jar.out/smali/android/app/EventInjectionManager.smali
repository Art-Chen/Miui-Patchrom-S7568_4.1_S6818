.class public Landroid/app/EventInjectionManager;
.super Ljava/lang/Object;
.source "EventInjectionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventInjectionManager"


# instance fields
.field private final mService:Landroid/app/IEventInjection;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/IEventInjection;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EventInjectionManager;->mTextView:Landroid/widget/TextView;

    .line 14
    iput-object p1, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    .line 15
    return-void
.end method


# virtual methods
.method public enterMouseMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->enterMouseMode()V

    .line 31
    return-void
.end method

.method public exitMouseMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->exitMouseMode()V

    .line 35
    return-void
.end method

.method public sendKeyDown(I)V
    .locals 1
    .parameter "keycode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyDown(I)V

    .line 19
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 1
    .parameter "keycode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyDownUpSync(I)V

    .line 27
    return-void
.end method

.method public sendKeyUp(I)V
    .locals 1
    .parameter "keycode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyUp(I)V

    .line 23
    return-void
.end method

.method public sendMouseDown(I)V
    .locals 1
    .parameter "button"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendMouseDown(I)V

    .line 39
    return-void
.end method

.method public sendMouseMove(IFF)V
    .locals 1
    .parameter "button"
    .parameter "dx"
    .parameter "dy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IEventInjection;->sendMouseMove(IFF)V

    .line 44
    return-void
.end method

.method public sendMouseUp(I)V
    .locals 1
    .parameter "button"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendMouseUp(I)V

    .line 48
    return-void
.end method

.method public sendMultiTouchDown(FFD)V
    .locals 1
    .parameter "cursorX"
    .parameter "cursorY"
    .parameter "distance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IEventInjection;->sendMultiTouchDown(FFD)V

    .line 64
    return-void
.end method

.method public sendMultiTouchMove(FFD)V
    .locals 1
    .parameter "cursorX"
    .parameter "cursorY"
    .parameter "distance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IEventInjection;->sendMultiTouchMove(FFD)V

    .line 68
    return-void
.end method

.method public sendMultiTouchUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->sendMultiTouchUp()V

    .line 72
    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "EventInjectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText[text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendText(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public sendTouchDown(II)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2}, Landroid/app/IEventInjection;->sendTouchDown(II)V

    .line 52
    return-void
.end method

.method public sendTouchMove(II)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2}, Landroid/app/IEventInjection;->sendTouchMove(II)V

    .line 56
    return-void
.end method

.method public sendTouchUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->sendTouchUp()V

    .line 60
    return-void
.end method
