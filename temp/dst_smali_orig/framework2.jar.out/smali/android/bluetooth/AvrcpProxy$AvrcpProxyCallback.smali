.class Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;
.super Landroid/bluetooth/IAvrcpProxyCallback$Stub;
.source "AvrcpProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/AvrcpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvrcpProxyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/AvrcpProxy;


# direct methods
.method constructor <init>(Landroid/bluetooth/AvrcpProxy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-direct {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementAttributes()[Landroid/os/ElementAttributeParcel;
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyCallback - getElementAttributes()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getElementAttributes()[Landroid/os/ElementAttributeParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus()Landroid/os/PlayStatusParcel;
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyCallback - getPlayStatus()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getPlayStatus()Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyCallback - getPlayerSettingVal()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEvents()Landroid/os/SupportedEventsParcel;
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyCallback - getSupportedEvents()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getSupportedEvents()Landroid/os/SupportedEventsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyTunnel - listPlayerSettingAttrs()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    .locals 1
    .parameter "attrId"

    .prologue
    const-string v0, "AvrcpProxyCallback - listPlayerSettingVals()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0, p1}, Landroid/bluetooth/AvrcpProxy;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public setPlayerSettingVal(BB)V
    .locals 1
    .parameter "attr"
    .parameter "val"

    .prologue
    const-string v0, "AvrcpProxyCallback - setPlayerSettingVal()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/AvrcpProxy;->setPlayerSettingVal(BB)V

    return-void
.end method

.method public updatePlayerSettingVals()Z
    .locals 1

    .prologue
    const-string v0, "AvrcpProxyCallback - updatePlayerSettingVals()"

    #calls: Landroid/bluetooth/AvrcpProxy;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/AvrcpProxy;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->updatePlayerSettingVals()Z

    move-result v0

    return v0
.end method
