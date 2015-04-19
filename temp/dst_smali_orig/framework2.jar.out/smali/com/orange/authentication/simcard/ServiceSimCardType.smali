.class public Lcom/orange/authentication/simcard/ServiceSimCardType;
.super Ljava/lang/Object;
.source "ServiceSimCardType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/ServiceSimCardType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

.field private mErrorMessage:Ljava/lang/String;

.field private mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/orange/authentication/simcard/ServiceSimCardType$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/ServiceSimCardType$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceSimCardType$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    iput-object p2, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V
    .locals 1
    .parameter "simCardType"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    sget-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mErrorMessage:Ljava/lang/String;

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mError:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceSimCardType;->mSimCardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
