.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
.super Ljava/lang/Object;
.source "CircleMissedEventData.java"


# instance fields
.field public content:Ljava/lang/String;

.field public date:J

.field public name:Ljava/lang/String;

.field public threadId:J

.field public tickerText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "sName"
    .parameter "lDate"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 0
    .parameter "sName"
    .parameter "cTickerText"
    .parameter "lDate"
    .parameter "lThreadId"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    iput-wide p5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->threadId:J

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->tickerText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "sName"
    .parameter "sContent"
    .parameter "lDate"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->content:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    return-void
.end method
