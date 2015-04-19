.class public Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
.super Ljava/lang/Object;
.source "ServiceGsmAuthenticationResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/GsmAuthenticationResult;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field private mErrorMessage:Ljava/lang/String;

.field private mKc:J

.field private mSres:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    iput-object p2, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getKc()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setKc(J)V
    .locals 0
    .parameter "kc"

    .prologue
    iput-wide p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    return-void
.end method

.method public setSres(I)V
    .locals 0
    .parameter "sres"

    .prologue
    iput p1, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-wide v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mKc:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mSres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
