.class Lcom/android/providers/media/FaceScanner$RecomendedPerson;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/FaceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecomendedPerson"
.end annotation


# instance fields
.field public mPersonId:I

.field public mScore:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "personId"
    .parameter "score"

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput v0, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 175
    iput v0, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 177
    iput p1, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 178
    iput p2, p0, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 179
    return-void
.end method
