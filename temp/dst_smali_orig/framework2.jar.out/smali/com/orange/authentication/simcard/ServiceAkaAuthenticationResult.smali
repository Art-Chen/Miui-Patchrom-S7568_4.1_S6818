.class public Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
.super Ljava/lang/Object;
.source "ServiceAkaAuthenticationResult.java"

# interfaces
.implements Lcom/orange/authentication/simcard/AkaAuthenticationResult;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuts:[B

.field private mCk:[B

.field private mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

.field private mErrorMessage:Ljava/lang/String;

.field private mIk:[B

.field private mRes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;

    invoke-direct {v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object p2, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "auts_when_syncerr"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SYNCH_FAILURE_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAuts()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    return-object v0
.end method

.method public getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

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

    invoke-static {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setCk([B)V
    .locals 0
    .parameter "ck"

    .prologue
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    return-void
.end method

.method public setIk([B)V
    .locals 0
    .parameter "ik"

    .prologue
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    return-void
.end method

.method public setRes([B)V
    .locals 0
    .parameter "res"

    .prologue
    iput-object p1, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    return-void
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
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mCk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mIk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mRes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mAuts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mError:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-virtual {v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
