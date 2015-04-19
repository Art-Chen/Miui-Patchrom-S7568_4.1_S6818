.class Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;
.super Lcom/android/server/enterprise/EdmCache;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofencingCache"
.end annotation


# instance fields
.field public mGeofenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0
    .parameter

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Lcom/android/server/enterprise/EdmCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1723
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    return-void
.end method


# virtual methods
.method public updateCache()Z
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->readGeofenceFromDB()Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    .line 1728
    const/4 v0, 0x1

    return v0
.end method
