.class public final Landroid/app/SpellScroll;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SpellScroll$SpellEffect;,
        Landroid/app/SpellScroll$Spell;,
        Landroid/app/SpellScroll$Ingredient;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final LABEL_SPELLSCROLL:Ljava/lang/String; = "android.app.spellscroll"

.field private static final TAG:Ljava/lang/String; = "SpellScroll"

.field private static final XML_ELEMENT_INGREDIENT:Ljava/lang/String; = "ingredient"

.field private static final XML_ELEMENT_INTENT:Ljava/lang/String; = "intent"

.field private static final XML_ELEMENT_SPELL:Ljava/lang/String; = "spell"

.field private static final XML_ELEMENT_SPELLEFFECT:Ljava/lang/String; = "spelleffect"

.field private static final XML_ELEMENT_SPELLEXTRAATTR:Ljava/lang/String; = "extra-attr"

.field private static final XML_ELEMENT_SPELLSCROLL:Ljava/lang/String; = "spellscroll"


# instance fields
.field private mDisabled:Z

.field private final mHintId:I

.field private final mIconId:I

.field private final mLabelId:I

.field private final mLocalHash:I

.field private final mName:Ljava/lang/String;

.field private final mNonLocalizedLabel:Ljava/lang/String;

.field private final mPriority:I

.field private mSpellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellScrollComponent:Landroid/content/ComponentName;

.field private mSpellsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/SpellScroll;->DEBUG:Z

    new-instance v0, Landroid/app/SpellScroll$1;

    invoke-direct {v0}, Landroid/app/SpellScroll$1;-><init>()V

    sput-object v0, Landroid/app/SpellScroll;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/SpellScroll;)V
    .locals 1
    .parameter "other"

    .prologue
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    iget-object v0, p1, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    iget v0, p1, Landroid/app/SpellScroll;->mLabelId:I

    iput v0, p0, Landroid/app/SpellScroll;->mLabelId:I

    iget v0, p1, Landroid/app/SpellScroll;->mHintId:I

    iput v0, p0, Landroid/app/SpellScroll;->mHintId:I

    iget v0, p1, Landroid/app/SpellScroll;->mIconId:I

    iput v0, p0, Landroid/app/SpellScroll;->mIconId:I

    iget-object v0, p1, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    iget v0, p1, Landroid/app/SpellScroll;->mPriority:I

    iput v0, p0, Landroid/app/SpellScroll;->mPriority:I

    iget-object v0, p1, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroid/app/SpellScroll;->mDisabled:Z

    iput-boolean v0, p0, Landroid/app/SpellScroll;->mDisabled:Z

    iget-object v0, p1, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SpellScroll;->calculateLocalHash()I

    move-result v0

    iput v0, p0, Landroid/app/SpellScroll;->mLocalHash:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "packageContext"
    .parameter "info"
    .parameter "cName"
    .parameter "isDisabled"

    .prologue
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    iget v2, p2, Landroid/content/pm/ActivityInfo;->labelRes:I

    .local v2, labelId:I
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .local v1, iconId:I
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :cond_0
    if-nez v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_1
    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    iput v2, p0, Landroid/app/SpellScroll;->mHintId:I

    const/4 v4, 0x0

    iput v4, p0, Landroid/app/SpellScroll;->mPriority:I

    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    iput v1, p0, Landroid/app/SpellScroll;->mIconId:I

    iput v2, p0, Landroid/app/SpellScroll;->mLabelId:I

    iput-object p3, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    iput-boolean p4, p0, Landroid/app/SpellScroll;->mDisabled:Z

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, nonLocalizedLabel:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    iput-object v3, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SpellScroll;->calculateLocalHash()I

    move-result v4

    iput v4, p0, Landroid/app/SpellScroll;->mLocalHash:I

    return-void

    .end local v3           #nonLocalizedLabel:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3       #nonLocalizedLabel:Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;Z)V
    .locals 7
    .parameter "packageContext"
    .parameter "attr"
    .parameter "cName"
    .parameter "isDisabled"

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    iput-object p3, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    sget-object v5, Lcom/android/internal/R$styleable;->SpellScroll:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, ta:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SpellScroll;->mHintId:I

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SpellScroll;->mPriority:I

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, targetPackage:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .local v0, iconId:I
    invoke-virtual {v3, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, labelId:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :cond_0
    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "spellscroll label must be a resource reference."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iput v1, p0, Landroid/app/SpellScroll;->mLabelId:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_2
    if-nez v0, :cond_3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "spellscroll icon must be a resource reference."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v0, p0, Landroid/app/SpellScroll;->mIconId:I

    if-eqz v4, :cond_5

    .end local v4           #targetPackage:Ljava/lang/String;
    :goto_0
    iput-object v4, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "targetPackage may not be null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v4       #targetPackage:Ljava/lang/String;
    :cond_5
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v4           #targetPackage:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-object v2, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    :cond_8
    iput-object v2, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/app/SpellScroll;->mDisabled:Z

    const-string v5, ""

    iput-object v5, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SpellScroll;->calculateLocalHash()I

    move-result v5

    iput v5, p0, Landroid/app/SpellScroll;->mLocalHash:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll;->mLabelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll;->mHintId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    new-instance v1, Landroid/app/SpellScroll$Spell;

    invoke-direct {v1, p1}, Landroid/app/SpellScroll$Spell;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v1}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/app/SpellScroll;->mDisabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SpellScroll;->calculateLocalHash()I

    move-result v1

    iput v1, p0, Landroid/app/SpellScroll;->mLocalHash:I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private calculateLocalHash()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/app/SpellScroll;->mLabelId:I

    .local v0, result:I
    iget v1, p0, Landroid/app/SpellScroll;->mHintId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/app/SpellScroll;->mIconId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/app/SpellScroll;->mPriority:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method private static createPackageContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "cName"

    .prologue
    const/4 v1, 0x0

    .local v1, theirContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SpellScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "SpellScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createPseudoSpellScroll(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/app/SpellScroll;
    .locals 9
    .parameter "context"
    .parameter "info"
    .parameter "isDisabled"

    .prologue
    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, cName:Landroid/content/ComponentName;
    invoke-static {p0, v0}, Landroid/app/SpellScroll;->createPackageContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v3

    .local v3, packageContext:Landroid/content/Context;
    new-instance v4, Landroid/app/SpellScroll;

    invoke-direct {v4, v3, p1, v0, p2}, Landroid/app/SpellScroll;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;Z)V

    .local v4, scroll:Landroid/app/SpellScroll;
    new-instance v5, Landroid/app/SpellScroll$Spell;

    invoke-virtual {v4}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, p1, v6}, Landroid/app/SpellScroll$Spell;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .local v5, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {v4, v5}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    new-instance v1, Landroid/app/SpellScroll$SpellEffect;

    invoke-direct {v1}, Landroid/app/SpellScroll$SpellEffect;-><init>()V

    .local v1, effect:Landroid/app/SpellScroll$SpellEffect;
    invoke-virtual {v5, v1}, Landroid/app/SpellScroll$Spell;->addEffect(Landroid/app/SpellScroll$SpellEffect;)V

    new-instance v6, Landroid/app/ExtraAttr;

    const-string v7, "flags"

    const-string v8, "FLAG_ACTIVITY_NEW_TASK|FLAG_ACTIVITY_CLEAR_TOP"

    invoke-direct {v6, v7, v8}, Landroid/app/ExtraAttr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/app/SpellScroll$SpellEffect;->addExtraAttr(Landroid/app/ExtraAttr;)V

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/SpellScroll$SpellEffect;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static getComponentMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;IZ)Landroid/app/SpellScroll;
    .locals 22
    .parameter "context"
    .parameter "xml"
    .parameter "cName"
    .parameter "defaultCastAction"
    .parameter "isDisabled"

    .prologue
    const/4 v15, 0x0

    .local v15, lastSpellScroll:Landroid/app/SpellScroll;
    const/4 v8, 0x0

    .local v8, lastIngredient:Landroid/app/SpellScroll$Ingredient;
    const/4 v13, 0x0

    .local v13, lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    const/4 v11, 0x0

    .local v11, lastSpell:Landroid/app/SpellScroll$Spell;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/app/SpellScroll;->createPackageContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v17

    .local v17, packageContext:Landroid/content/Context;
    if-nez v17, :cond_1

    sget-boolean v19, Landroid/app/SpellScroll;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "SpellScroll"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "packageContext for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cannot be created!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_1
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .local v7, extraAttrOwner:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/app/ExtraAttr$Owner;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v18

    .local v18, tagType:I
    move-object v12, v11

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .local v12, lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v14, v13

    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .local v14, lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v9, v8

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .local v9, lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v16, v15

    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .local v16, lastSpellScroll:Landroid/app/SpellScroll;
    :cond_2
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, elementName:Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .local v3, attr:Landroid/util/AttributeSet;
    if-eqz v3, :cond_2

    const-string v19, "spellscroll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    new-instance v15, Landroid/app/SpellScroll;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v15, v0, v3, v1, v2}, Landroid/app/SpellScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v19

    if-nez v19, :cond_13

    invoke-virtual {v7, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v3           #attr:Landroid/util/AttributeSet;
    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    :goto_2
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v18

    move-object v12, v11

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v14, v13

    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v9, v8

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v16, v15

    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_1

    .restart local v3       #attr:Landroid/util/AttributeSet;
    :cond_3
    :try_start_4
    const-string v19, "spell"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz v16, :cond_4

    new-instance v11, Landroid/app/SpellScroll$Spell;

    invoke-virtual/range {v16 .. v16}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-direct {v11, v0, v3, v1, v2}, Landroid/app/SpellScroll$Spell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v19

    if-nez v19, :cond_12

    invoke-virtual {v7, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_4
    :try_start_6
    const-string v19, "ingredient"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v12, :cond_5

    new-instance v8, Landroid/app/SpellScroll$Ingredient;

    move-object/from16 v0, v17

    invoke-direct {v8, v0, v3}, Landroid/app/SpellScroll$Ingredient;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    :try_start_7
    invoke-virtual {v12, v8}, Landroid/app/SpellScroll$Spell;->addIngredient(Landroid/app/SpellScroll$Ingredient;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v19

    if-nez v19, :cond_11

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_5
    :try_start_8
    const-string v19, "spelleffect"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v12, :cond_6

    new-instance v13, Landroid/app/SpellScroll$SpellEffect;

    invoke-direct {v13}, Landroid/app/SpellScroll$SpellEffect;-><init>()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    :try_start_9
    invoke-virtual {v12, v13}, Landroid/app/SpellScroll$Spell;->addEffect(Landroid/app/SpellScroll$SpellEffect;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v19

    if-nez v19, :cond_10

    invoke-virtual {v7, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_6
    :try_start_a
    const-string v19, "intent"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-eqz v14, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/app/SpellScroll$SpellEffect;->setIntent(Landroid/content/Intent;)V

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_7
    const-string v19, "extra-attr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    new-instance v6, Landroid/app/ExtraAttr;

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v3}, Landroid/app/ExtraAttr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v6, extraAttr:Landroid/app/ExtraAttr;
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ExtraAttr$Owner;

    .local v10, lastOwner:Landroid/app/ExtraAttr$Owner;
    if-eqz v10, :cond_8

    invoke-virtual {v10, v6}, Landroid/app/ExtraAttr$Owner;->addExtraAttr(Landroid/app/ExtraAttr;)V

    :cond_8
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v6           #extraAttr:Landroid/app/ExtraAttr;
    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v10           #lastOwner:Landroid/app/ExtraAttr$Owner;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3           #attr:Landroid/util/AttributeSet;
    :cond_a
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_b
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v19, "extra-attr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_c
    const-string v19, "spell"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/4 v11, 0x0

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_d
    const-string v19, "ingredient"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/4 v8, 0x0

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_e
    const-string v19, "spelleffect"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-result v19

    if-eqz v19, :cond_a

    const/4 v13, 0x0

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v5           #elementName:Ljava/lang/String;
    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_f
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .end local v18           #tagType:I
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    :goto_3
    move-object/from16 v19, v15

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v19, "SpellScroll"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid attribute in metadata for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v19, "SpellScroll"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reading SpellScroll metadata for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    :goto_6
    const-string v19, "SpellScroll"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reading SpellScroll metadata for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v18       #tagType:I
    :catch_3
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_6

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v3       #attr:Landroid/util/AttributeSet;
    .restart local v5       #elementName:Ljava/lang/String;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    :catch_4
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    goto :goto_6

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_6

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_6
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_6

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_7
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_6

    .end local v3           #attr:Landroid/util/AttributeSet;
    .end local v5           #elementName:Ljava/lang/String;
    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_8
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_5

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v3       #attr:Landroid/util/AttributeSet;
    .restart local v5       #elementName:Ljava/lang/String;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    :catch_9
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    goto :goto_5

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_a
    move-exception v4

    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_5

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_b
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto :goto_5

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_c
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_5

    .end local v3           #attr:Landroid/util/AttributeSet;
    .end local v5           #elementName:Ljava/lang/String;
    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_d
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_4

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v3       #attr:Landroid/util/AttributeSet;
    .restart local v5       #elementName:Ljava/lang/String;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    :catch_e
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    goto/16 :goto_4

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_f
    move-exception v4

    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_4

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_10
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_4

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :catch_11
    move-exception v4

    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_4

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_10
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_11
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .end local v15           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v16       #lastSpellScroll:Landroid/app/SpellScroll;
    :cond_12
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    move-object/from16 v15, v16

    .end local v16           #lastSpellScroll:Landroid/app/SpellScroll;
    .restart local v15       #lastSpellScroll:Landroid/app/SpellScroll;
    goto/16 :goto_2

    .end local v8           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .end local v11           #lastSpell:Landroid/app/SpellScroll$Spell;
    .end local v13           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v9       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v12       #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v14       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    :cond_13
    move-object v11, v12

    .end local v12           #lastSpell:Landroid/app/SpellScroll$Spell;
    .restart local v11       #lastSpell:Landroid/app/SpellScroll$Spell;
    move-object v13, v14

    .end local v14           #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    .restart local v13       #lastSpellEffect:Landroid/app/SpellScroll$SpellEffect;
    move-object v8, v9

    .end local v9           #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    .restart local v8       #lastIngredient:Landroid/app/SpellScroll$Ingredient;
    goto/16 :goto_2
.end method

.method public static getMetaData(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;IZ)Landroid/app/SpellScroll;
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "defaultCastAction"
    .parameter "isDisabled"

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.app.spellscroll"

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .local v2, xml:Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, cName:Landroid/content/ComponentName;
    invoke-static {p0, v2, v0, p2, p3}, Landroid/app/SpellScroll;->getComponentMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;IZ)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, scroll:Landroid/app/SpellScroll;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    sget-boolean v3, Landroid/app/SpellScroll;->DEBUG:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    const-string v3, "SpellScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getLabelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getIconId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",hint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getHintId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v3, "SpellScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", no spellscroll meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addSpell(Landroid/app/SpellScroll$Spell;)V
    .locals 3
    .parameter "spell"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SpellScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spell ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] allready exists!!! it will be ignored!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTargetPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/app/SpellScroll;->mDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hashCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/SpellScroll;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSpellScrollComponent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mLabelId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SpellScroll;->mLabelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SpellScroll;->mIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHintId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SpellScroll;->mHintId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPriority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SpellScroll;->mPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Number of spells ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/SpellScroll;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mExtraAttrs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/SpellScroll;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    const/4 v1, 0x1

    .local v1, j:I
    :try_start_0
    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Spell;

    .local v2, spell:Landroid/app/SpellScroll$Spell;
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Spell #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/app/SpellScroll$Spell;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #spell:Landroid/app/SpellScroll$Spell;
    :cond_2
    monitor-exit p0

    return-void

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/app/SpellScroll;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/SpellScroll;

    .local v0, other:Landroid/app/SpellScroll;
    iget v2, p0, Landroid/app/SpellScroll;->mLabelId:I

    iget v3, v0, Landroid/app/SpellScroll;->mLabelId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/SpellScroll;->mHintId:I

    iget v3, v0, Landroid/app/SpellScroll;->mHintId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/SpellScroll;->mIconId:I

    iget v3, v0, Landroid/app/SpellScroll;->mIconId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/app/SpellScroll;->mPriority:I

    iget v3, v0, Landroid/app/SpellScroll;->mPriority:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/app/SpellScroll;->mDisabled:Z

    iget-boolean v3, v0, Landroid/app/SpellScroll;->mDisabled:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_8

    iget-object v2, v0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    :cond_8
    iget-object v2, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/SpellScroll;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/SpellScroll;->mIconId:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/SpellScroll;->mLabelId:I

    return v0
.end method

.method public declared-synchronized getMatchedInstantSpell(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll$Spell;

    .local v1, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {v1, p1}, Landroid/app/SpellScroll$Spell;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .end local v1           #spell:Landroid/app/SpellScroll$Spell;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/app/SpellScroll;->createPackageContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/SpellScroll;->mPriority:I

    return v0
.end method

.method public declared-synchronized getSpell()Landroid/app/SpellScroll$Spell;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    .locals 1
    .parameter "spellName"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Spell;

    .local v2, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {v2}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #spell:Landroid/app/SpellScroll$Spell;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public getSpellScrollComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSpells()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll$Spell;>;"
    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    iget v3, p0, Landroid/app/SpellScroll;->mLocalHash:I

    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v4

    xor-int v1, v3, v4

    .local v1, result:I
    iget-boolean v3, p0, Landroid/app/SpellScroll;->mDisabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    shl-int v3, v1, v3

    xor-int/2addr v1, v3

    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll$Spell;

    .local v2, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {v2}, Landroid/app/SpellScroll$Spell;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #spell:Landroid/app/SpellScroll$Spell;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return v1
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/SpellScroll;->mDisabled:Z

    return v0
.end method

.method public isMergable(Landroid/app/SpellScroll;)Z
    .locals 2
    .parameter "scroll"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given SpellScrollInfo is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized merge(Landroid/app/SpellScroll;)V
    .locals 4
    .parameter "scroll"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll$Spell;

    .local v1, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {p0, v1}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spell:Landroid/app/SpellScroll$Spell;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Landroid/app/SpellScroll;->mDisabled:Z

    invoke-virtual {p1}, Landroid/app/SpellScroll;->isDisabled()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/app/SpellScroll;->mDisabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDisabled()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/SpellScroll;->mDisabled:Z

    return-void
.end method

.method public shallowCopy()Landroid/app/SpellScroll;
    .locals 1

    .prologue
    new-instance v0, Landroid/app/SpellScroll;

    invoke-direct {v0, p0}, Landroid/app/SpellScroll;-><init>(Landroid/app/SpellScroll;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/SpellScroll;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellScrollComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v3, p0, Landroid/app/SpellScroll;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Landroid/app/SpellScroll;->mLabelId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/SpellScroll;->mHintId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/SpellScroll;->mIconId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/app/SpellScroll;->mPriority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v3, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v3, p0, Landroid/app/SpellScroll;->mDisabled:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/SpellScroll;->mNonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/app/SpellScroll;->mSpellsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll$Spell;

    .local v1, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual {v1, p1, p2}, Landroid/app/SpellScroll$Spell;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
