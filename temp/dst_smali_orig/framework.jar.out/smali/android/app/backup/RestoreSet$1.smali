.class final Landroid/app/backup/RestoreSet$1;
.super Ljava/lang/Object;
.source "RestoreSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/backup/RestoreSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreSet;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Landroid/app/backup/RestoreSet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/backup/RestoreSet;-><init>(Landroid/os/Parcel;Landroid/app/backup/RestoreSet$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreSet$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/backup/RestoreSet;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/app/backup/RestoreSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreSet$1;->newArray(I)[Landroid/app/backup/RestoreSet;

    move-result-object v0

    return-object v0
.end method