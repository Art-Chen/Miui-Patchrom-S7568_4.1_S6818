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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/EventInjectionManager;->mTextView:Landroid/widget/TextView;

    iput-object p1, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->enterMouseMode()V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->exitMouseMode()V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyDown(I)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyDownUpSync(I)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendKeyUp(I)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendMouseDown(I)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IEventInjection;->sendMouseMove(IFF)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendMouseUp(I)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IEventInjection;->sendMultiTouchDown(FFD)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IEventInjection;->sendMultiTouchMove(FFD)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->sendMultiTouchUp()V

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

    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1}, Landroid/app/IEventInjection;->sendText(Ljava/lang/String;)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2}, Landroid/app/IEventInjection;->sendTouchDown(II)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0, p1, p2}, Landroid/app/IEventInjection;->sendTouchMove(II)V

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
    iget-object v0, p0, Landroid/app/EventInjectionManager;->mService:Landroid/app/IEventInjection;

    invoke-interface {v0}, Landroid/app/IEventInjection;->sendTouchUp()V

    return-void
.end method
