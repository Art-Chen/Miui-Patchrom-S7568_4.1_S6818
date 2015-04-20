.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_FORCED_RESERVE_OVERFLOW:I = 0x20

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final MAX_HOME_SLOP:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mForcedReserveOverflow:Z

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mHomeLayoutRes:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMaxHomeSlop:I

.field private mMultiWindowMenuButton:Landroid/view/View;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReserveMultiWindow:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpMargin:I

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 211
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 178
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    .line 182
    new-instance v2, Lcom/android/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 194
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v2, Lcom/android/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 217
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .local v15, outValue:Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ff

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 219
    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 220
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    .line 224
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 227
    .local v9, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 228
    .local v10, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 229
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 231
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 232
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 234
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 236
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 238
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 244
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 248
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 250
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 252
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 262
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 264
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, 0x1090018

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 269
    .local v13, homeResId:I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 280
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 281
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 282
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 283
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 286
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 287
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    .line 293
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 295
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 296
    .local v11, customNavId:I
    if-eqz v11, :cond_5

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 302
    :cond_5
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 304
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 312
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 315
    :cond_6
    const/high16 v2, 0x4200

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mMaxHomeSlop:I

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->initMultiWindowMode()V

    .line 325
    return-void

    .line 239
    .end local v11           #customNavId:I
    .end local v13           #homeResId:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v12

    .line 240
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 253
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 254
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 542
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 551
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private getWindowMode()I
    .locals 2

    .prologue
    .line 971
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 979
    :goto_0
    return v1

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 975
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 976
    check-cast v0, Landroid/app/Activity;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    goto :goto_0

    .line 979
    :cond_1
    const/high16 v1, 0x100

    goto :goto_0
.end method

.method private initMultiWindowMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v0

    .line 1016
    .local v0, windowMode:I
    const/high16 v1, 0x40

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const/high16 v1, 0x8

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1025
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 1027
    new-instance v1, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;-><init>(Lcom/android/internal/widget/ActionBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    .line 1028
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const v2, 0x1020456

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1031
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->miuiInitTitle()Z

    move-result v4

    if-eqz v4, :cond_miui_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void

    :cond_miui_0
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-nez v7, :cond_5

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 890
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v7, :cond_8

    .line 891
    const v7, 0x1090105

    invoke-virtual {v1, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    .line 900
    :goto_0
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    const v11, 0x102026f

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 901
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    const v11, 0x1020270

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 902
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    const v11, 0x102025c

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 904
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v7, :cond_0

    .line 907
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v7, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 909
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 910
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :cond_1
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v7, :cond_2

    .line 914
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v7, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 916
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 917
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    :cond_3
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v0, v8

    .line 922
    .local v0, homeAsUp:Z
    :goto_1
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    move v2, v8

    .line 923
    .local v2, showHome:Z
    :goto_2
    if-nez v2, :cond_b

    move v3, v8

    .line 924
    .local v3, showTitleUp:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    move v7, v9

    :goto_4
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 928
    .local v6, titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 929
    .local v5, titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 931
    .local v4, subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v7, :cond_4

    .line 932
    if-eqz v2, :cond_e

    .line 933
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 934
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 935
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 953
    :cond_4
    :goto_5
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    move v7, v8

    :goto_6
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 954
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    move v7, v8

    :goto_7
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 956
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    if-nez v2, :cond_12

    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 960
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    .end local v3           #showTitleUp:Z
    .end local v4           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 961
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 964
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    :cond_7
    return-void

    .line 895
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_8
    const v7, 0x1090019

    invoke-virtual {v1, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 921
    goto/16 :goto_1

    .restart local v0       #homeAsUp:Z
    :cond_a
    move v2, v9

    .line 922
    goto :goto_2

    .restart local v2       #showHome:Z
    :cond_b
    move v3, v9

    .line 923
    goto :goto_3

    .line 924
    .restart local v3       #showTitleUp:Z
    :cond_c
    const/4 v7, 0x4

    goto :goto_4

    :cond_d
    move v7, v10

    goto :goto_4

    .line 938
    .restart local v4       #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5       #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6       #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    if-eqz v0, :cond_f

    .line 939
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 940
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 941
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 944
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 946
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 947
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    :cond_10
    move v7, v9

    .line 953
    goto :goto_6

    :cond_11
    move v7, v9

    .line 954
    goto :goto_7

    :cond_12
    move v8, v9

    .line 956
    goto :goto_8
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 605
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 606
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 611
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 613
    .end local v0           #visible:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 616
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 608
    goto :goto_0

    .line 611
    .restart local v0       #visible:Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeImageLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, homeResId:I
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    if-eqz v8, :cond_0

    .line 1052
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 1062
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1064
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1065
    .local v6, tempHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    const v8, 0x102002c

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1067
    .local v7, tempiconView:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1068
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1071
    .local v4, oldLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1074
    .local v5, oldLp_e:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1075
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1078
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1079
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1081
    return-void

    .line 1055
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #oldLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #oldLp_e:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #tempHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v7           #tempiconView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v11, 0x10102ce

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1058
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v8, 0xf

    const v9, 0x1090018

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0
.end method

.method private updateMultiWindow()V
    .locals 7

    .prologue
    .line 1035
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10103cd

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1040
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1041
    .local v1, contentDescription:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1043
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1045
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #contentDescription:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 561
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 564
    :cond_0
    return-void

    .line 559
    .end local v0           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 866
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1513
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "lp"

    .prologue
    .line 1518
    if-nez p1, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1521
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getExpandedActionView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitleStyleRes()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    return v0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTabScrollView()Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleLayout()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleStyleRes()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 393
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x102041a

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 398
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 385
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x102041b

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 390
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isMultiWindowReserved()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected miuiInitTitle()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 333
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 337
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    .line 338
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateHomeImageLayout()V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateMultiWindow()V

    .line 351
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 353
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 354
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 359
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 377
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 871
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 873
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 875
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 877
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 878
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 879
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 884
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v26

    .line 1336
    .local v26, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v28

    .line 1337
    .local v28, y:I
    sub-int v30, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v7, v30, v31

    .line 1339
    .local v7, contentHeight:I
    if-gtz v7, :cond_0

    .line 1509
    :goto_0
    return-void

    .line 1344
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1345
    .local v13, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_1
    const/16 v20, 0x0

    .line 1346
    .local v20, needsTouchDelegate:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ActionBarView;->mMaxHomeSlop:I

    .line 1347
    .local v15, homeSlop:I
    const/4 v14, 0x0

    .line 1348
    .local v14, homeRight:I
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 1349
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v16

    .line 1350
    .local v16, leftOffset:I
    add-int v30, v26, v16

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-virtual {v0, v13, v1, v2, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    add-int v30, v30, v16

    add-int v26, v26, v30

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-ne v13, v0, :cond_e

    const/16 v20, 0x1

    .line 1352
    :goto_2
    move/from16 v14, v26

    .line 1355
    .end local v16           #leftOffset:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-nez v30, :cond_3

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x8

    if-eqz v30, :cond_f

    const/16 v23, 0x1

    .line 1358
    .local v23, showTitle:Z
    :goto_3
    if-eqz v23, :cond_2

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    add-int v26, v26, v30

    .line 1362
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 1382
    .end local v23           #showTitle:Z
    :cond_3
    :goto_4
    :pswitch_0
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v31

    sub-int v18, v30, v31

    .line 1386
    .local v18, menuLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    move/from16 v30, v0

    if-eqz v30, :cond_12

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1397
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1402
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v30

    sub-int v18, v18, v30

    .line 1408
    :cond_6
    const/4 v8, 0x0

    .line 1409
    .local v8, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    .line 1410
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1415
    :cond_7
    :goto_6
    if-eqz v8, :cond_b

    .line 1416
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 1417
    .local v17, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v30, v0

    if-eqz v30, :cond_14

    check-cast v17, Landroid/app/ActionBar$LayoutParams;

    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v4, v17

    .line 1420
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_7
    if-eqz v4, :cond_15

    iget v10, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1421
    .local v10, gravity:I
    :goto_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1423
    .local v19, navWidth:I
    const/16 v24, 0x0

    .line 1424
    .local v24, topMargin:I
    const/4 v5, 0x0

    .line 1425
    .local v5, bottomMargin:I
    if-eqz v4, :cond_8

    .line 1426
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1427
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v18, v18, v30

    .line 1428
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v24, v0

    .line 1429
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1432
    :cond_8
    and-int/lit8 v12, v10, 0x7

    .line 1434
    .local v12, hgravity:I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v12, v0, :cond_17

    .line 1435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    sub-int v30, v30, v19

    div-int/lit8 v6, v30, 0x2

    .line 1436
    .local v6, centeredLeft:I
    move/from16 v0, v26

    if-ge v6, v0, :cond_16

    .line 1437
    const/4 v12, 0x3

    .line 1445
    .end local v6           #centeredLeft:I
    :cond_9
    :goto_9
    const/16 v27, 0x0

    .line 1446
    .local v27, xpos:I
    packed-switch v12, :pswitch_data_1

    .line 1458
    :goto_a
    :pswitch_1
    and-int/lit8 v25, v10, 0x70

    .line 1460
    .local v25, vgravity:I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_a

    .line 1461
    const/16 v25, 0x10

    .line 1464
    :cond_a
    const/16 v29, 0x0

    .line 1465
    .local v29, ypos:I
    sparse-switch v25, :sswitch_data_0

    .line 1479
    :goto_b
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1480
    .local v9, customWidth:I
    add-int v30, v27, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v29

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1482
    sub-int v30, v27, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1483
    add-int v26, v26, v9

    .line 1486
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v9           #customWidth:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v19           #navWidth:I
    .end local v24           #topMargin:I
    .end local v25           #vgravity:I
    .end local v27           #xpos:I
    .end local v29           #ypos:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v11, v30, 0x2

    .line 1491
    .local v11, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v31, v0

    sub-int v32, v7, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v34

    add-int v33, v33, v34

    add-int v34, v7, v11

    invoke-virtual/range {v30 .. v34}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1502
    .end local v11           #halfProgressHeight:I
    :cond_c
    :goto_c
    if-eqz v20, :cond_19

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeft()I

    move-result v31

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getTop()I

    move-result v32

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getRight()I

    move-result v33

    add-int v33, v33, v15

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->getBottom()I

    move-result v34

    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    .line 1505
    new-instance v30, Landroid/view/TouchDelegate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v13}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1344
    .end local v8           #customView:Landroid/view/View;
    .end local v13           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v14           #homeRight:I
    .end local v15           #homeSlop:I
    .end local v18           #menuLeft:I
    .end local v20           #needsTouchDelegate:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    .line 1351
    .restart local v13       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v14       #homeRight:I
    .restart local v15       #homeSlop:I
    .restart local v16       #leftOffset:I
    .restart local v20       #needsTouchDelegate:Z
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1356
    .end local v16           #leftOffset:I
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1366
    .restart local v23       #showTitle:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1367
    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1368
    :cond_10
    sub-int v30, v26, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v26, v26, v30

    goto/16 :goto_4

    .line 1373
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    .line 1374
    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v30, v0

    add-int v26, v26, v30

    .line 1375
    :cond_11
    sub-int v30, v26, v14

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v0, v30

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v26, v26, v30

    goto/16 :goto_4

    .line 1391
    .end local v23           #showTitle:Z
    .restart local v18       #menuLeft:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    goto/16 :goto_5

    .line 1411
    .restart local v8       #customView:Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x10

    if-eqz v30, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1413
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_6

    .line 1417
    .restart local v17       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1420
    .end local v17           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    :cond_15
    const/16 v10, 0x13

    goto/16 :goto_8

    .line 1438
    .restart local v5       #bottomMargin:I
    .restart local v6       #centeredLeft:I
    .restart local v10       #gravity:I
    .restart local v12       #hgravity:I
    .restart local v19       #navWidth:I
    .restart local v24       #topMargin:I
    :cond_16
    add-int v30, v6, v19

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 1439
    const/4 v12, 0x5

    goto/16 :goto_9

    .line 1441
    .end local v6           #centeredLeft:I
    :cond_17
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_9

    .line 1442
    const/4 v12, 0x3

    goto/16 :goto_9

    .line 1448
    .restart local v27       #xpos:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    sub-int v30, v30, v19

    div-int/lit8 v27, v30, 0x2

    .line 1449
    goto/16 :goto_a

    .line 1451
    :pswitch_5
    move/from16 v27, v26

    .line 1452
    goto/16 :goto_a

    .line 1454
    :pswitch_6
    sub-int v27, v18, v19

    goto/16 :goto_a

    .line 1467
    .restart local v25       #vgravity:I
    .restart local v29       #ypos:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v22

    .line 1468
    .local v22, paddedTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v21, v30, v31

    .line 1469
    .local v21, paddedBottom:I
    sub-int v30, v21, v22

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v29, v30, 0x2

    .line 1470
    goto/16 :goto_b

    .line 1472
    .end local v21           #paddedBottom:I
    .end local v22           #paddedTop:I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v30

    add-int v29, v30, v24

    .line 1473
    goto/16 :goto_b

    .line 1475
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v29, v30, v5

    goto/16 :goto_b

    .line 1496
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v19           #navWidth:I
    .end local v24           #topMargin:I
    .end local v25           #vgravity:I
    .end local v27           #xpos:I
    .end local v29           #ypos:I
    .restart local v11       #halfProgressHeight:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v31, v0

    neg-int v0, v11

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v34

    add-int v33, v33, v34

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_c

    .line 1507
    .end local v11           #halfProgressHeight:I
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1465
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v7

    .line 1125
    .local v7, childCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v40, v0

    if-eqz v40, :cond_4

    .line 1126
    const/16 v38, 0x0

    .line 1127
    .local v38, visibleChildren:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v7, :cond_2

    .line 1128
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1129
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    if-ne v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v40

    if-eqz v40, :cond_1

    .line 1131
    :cond_0
    add-int/lit8 v38, v38, 0x1

    .line 1127
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1135
    .end local v6           #child:Landroid/view/View;
    :cond_2
    if-nez v38, :cond_4

    .line 1137
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1138
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1331
    .end local v22           #i:I
    .end local v38           #visibleChildren:I
    :cond_3
    :goto_1
    return-void

    .line 1142
    :cond_4
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1144
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    .line 1145
    .local v39, widthMode:I
    const/high16 v40, 0x4000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_5

    .line 1146
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 1150
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1151
    .local v16, heightMode:I
    const/high16 v40, -0x8000

    move/from16 v0, v16

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    .line 1152
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 1156
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1158
    .local v9, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-lez v40, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v27, v0

    .line 1161
    .local v27, maxHeight:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v41

    add-int v37, v40, v41

    .line 1162
    .local v37, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v30

    .line 1163
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v31

    .line 1164
    .local v31, paddingRight:I
    sub-int v15, v27, v37

    .line 1165
    .local v15, height:I
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1167
    .local v8, childSpecHeight:I
    sub-int v40, v9, v30

    sub-int v5, v40, v31

    .line 1168
    .local v5, availableWidth:I
    div-int/lit8 v24, v5, 0x2

    .line 1169
    .local v24, leftOfCenter:I
    move/from16 v32, v24

    .line 1171
    .local v32, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    .line 1173
    .local v18, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    .line 1174
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1176
    .local v26, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-gez v40, :cond_15

    .line 1177
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1181
    .local v20, homeWidthSpec:I
    :goto_4
    const/high16 v40, 0x4000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1183
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v40

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v41

    add-int v19, v40, v41

    .line 1184
    .local v19, homeWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1185
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1190
    .end local v19           #homeWidth:I
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getWindowMode()I

    move-result v40

    invoke-static/range {v40 .. v40}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v40

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    move/from16 v40, v0

    if-eqz v40, :cond_16

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1194
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1202
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1205
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1208
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_a

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1212
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 1216
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    if-eqz v40, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x8

    if-eqz v40, :cond_17

    const/16 v33, 0x1

    .line 1219
    .local v33, showTitle:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_b

    .line 1220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 1250
    :cond_b
    :goto_7
    const/4 v14, 0x0

    .line 1251
    .local v14, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1a

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1258
    :cond_c
    :goto_8
    if-eqz v14, :cond_10

    .line 1259
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1260
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v40, v0

    if-eqz v40, :cond_1b

    move-object/from16 v40, v26

    check-cast v40, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v4, v40

    .line 1263
    .local v4, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v21, 0x0

    .line 1264
    .local v21, horizontalMargin:I
    const/16 v36, 0x0

    .line 1265
    .local v36, verticalMargin:I
    if-eqz v4, :cond_d

    .line 1266
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v41, v0

    add-int v21, v40, v41

    .line 1267
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v40, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v41, v0

    add-int v36, v40, v41

    .line 1273
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_1c

    .line 1274
    const/high16 v11, -0x8000

    .line 1279
    .local v11, customNavHeightMode:I
    :goto_a
    const/16 v40, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    if-ltz v41, :cond_e

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .end local v15           #height:I
    :cond_e
    sub-int v41, v15, v36

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1282
    .local v10, customNavHeight:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1e

    const/high16 v13, 0x4000

    .line 1284
    .local v13, customNavWidthMode:I
    :goto_b
    const/16 v41, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-ltz v40, :cond_1f

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v40

    :goto_c
    sub-int v40, v40, v21

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1287
    .local v12, customNavWidth:I
    if-eqz v4, :cond_20

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v40, v0

    :goto_d
    and-int/lit8 v17, v40, 0x7

    .line 1292
    .local v17, hgrav:I
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_f

    .line 1293
    move/from16 v0, v24

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v40

    mul-int/lit8 v12, v40, 0x2

    .line 1296
    :cond_f
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1299
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    add-int v40, v40, v21

    sub-int v5, v5, v40

    .line 1302
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v17           #hgrav:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_11

    if-eqz v33, :cond_11

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v41, v0

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1305
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v24, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1308
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_23

    .line 1309
    const/16 v28, 0x0

    .line 1310
    .local v28, measuredHeight:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_e
    move/from16 v0, v22

    if-ge v0, v7, :cond_21

    .line 1311
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    .line 1312
    .local v35, v:Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    add-int v29, v40, v37

    .line 1313
    .local v29, paddedViewHeight:I
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    .line 1314
    move/from16 v28, v29

    .line 1310
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 1158
    .end local v5           #availableWidth:I
    .end local v8           #childSpecHeight:I
    .end local v14           #customView:Landroid/view/View;
    .end local v18           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v22           #i:I
    .end local v24           #leftOfCenter:I
    .end local v27           #maxHeight:I
    .end local v28           #measuredHeight:I
    .end local v29           #paddedViewHeight:I
    .end local v30           #paddingLeft:I
    .end local v31           #paddingRight:I
    .end local v32           #rightOfCenter:I
    .end local v33           #showTitle:Z
    .end local v35           #v:Landroid/view/View;
    .end local v37           #verticalPadding:I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1171
    .restart local v5       #availableWidth:I
    .restart local v8       #childSpecHeight:I
    .restart local v15       #height:I
    .restart local v24       #leftOfCenter:I
    .restart local v27       #maxHeight:I
    .restart local v30       #paddingLeft:I
    .restart local v31       #paddingRight:I
    .restart local v32       #rightOfCenter:I
    .restart local v37       #verticalPadding:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 1179
    .restart local v18       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/high16 v41, 0x4000

    invoke-static/range {v40 .. v41}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20       #homeWidthSpec:I
    goto/16 :goto_4

    .line 1196
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/view/View;->measure(II)V

    goto/16 :goto_5

    .line 1216
    :cond_17
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 1222
    .restart local v33       #showTitle:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    if-eqz v40, :cond_b

    .line 1223
    if-eqz v33, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 1224
    .local v23, itemPaddingSize:I
    :goto_f
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1225
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v25

    .line 1230
    .local v25, listNavWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1231
    const/16 v40, 0x0

    sub-int v41, v24, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1232
    goto/16 :goto_7

    .line 1223
    .end local v23           #itemPaddingSize:I
    .end local v25           #listNavWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_f

    .line 1235
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_b

    .line 1236
    if-eqz v33, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 1237
    .restart local v23       #itemPaddingSize:I
    :goto_10
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1238
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v34

    .line 1243
    .local v34, tabWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1244
    const/16 v40, 0x0

    sub-int v41, v24, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto/16 :goto_7

    .line 1236
    .end local v23           #itemPaddingSize:I
    .end local v34           #tabWidth:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_10

    .line 1253
    .restart local v14       #customView:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x10

    if-eqz v40, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_c

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1260
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1276
    .restart local v4       #ablp:Landroid/app/ActionBar$LayoutParams;
    .restart local v21       #horizontalMargin:I
    .restart local v36       #verticalMargin:I
    :cond_1c
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1d

    const/high16 v11, 0x4000

    .restart local v11       #customNavHeightMode:I
    :goto_11
    goto/16 :goto_a

    .end local v11           #customNavHeightMode:I
    :cond_1d
    const/high16 v11, -0x8000

    goto :goto_11

    .line 1282
    .end local v15           #height:I
    .restart local v10       #customNavHeight:I
    .restart local v11       #customNavHeightMode:I
    :cond_1e
    const/high16 v13, -0x8000

    goto/16 :goto_b

    .restart local v13       #customNavWidthMode:I
    :cond_1f
    move/from16 v40, v5

    .line 1284
    goto/16 :goto_c

    .line 1287
    .restart local v12       #customNavWidth:I
    :cond_20
    const/16 v40, 0x13

    goto/16 :goto_d

    .line 1317
    .end local v4           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    .restart local v22       #i:I
    .restart local v28       #measuredHeight:I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1322
    .end local v22           #i:I
    .end local v28           #measuredHeight:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_22

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1326
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    sub-int v41, v9, v41

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v42

    const/high16 v43, -0x8000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1319
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 1540
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1542
    .local v1, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1544
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1546
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1547
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1548
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1552
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1555
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1526
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1527
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1529
    .local v0, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1533
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1535
    return-object v0
.end method

.method public onWindowHide()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    instance-of v0, v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->onWindowHide()V

    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    instance-of v0, v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->onWindowShow()V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 466
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .parameter "collapsable"

    .prologue
    .line 1089
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 1090
    return-void
.end method

.method protected setCollapsed(Z)V
    .locals 0
    .parameter "collapsed"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1086
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 567
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 568
    .local v0, showCustom:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 571
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 572
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 575
    :cond_1
    return-void

    .line 567
    .end local v0           #showCustom:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 14
    .parameter "options"

    .prologue
    const/4 v0, -0x1

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 650
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v12, v0, :cond_6

    .line 651
    .local v0, flagsChanged:I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 667
    and-int/lit8 v12, v0, 0x1f

    if-eqz v12, :cond_16

    .line 668
    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_7

    move v4, v11

    .line 669
    .local v4, showHome:Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v12, :cond_8

    move v8, v9

    .line 670
    .local v8, vis:I
    :goto_2
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v12, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 672
    and-int/lit8 v12, v0, 0x4

    if-eqz v12, :cond_0

    .line 673
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_9

    move v3, v11

    .line 674
    .local v3, setUp:Z
    :goto_3
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v12, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 680
    if-eqz v3, :cond_0

    .line 681
    invoke-virtual {p0, v11}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 685
    .end local v3           #setUp:Z
    :cond_0
    and-int/lit8 v12, v0, 0x1

    if-eqz v12, :cond_1

    .line 686
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_a

    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_a

    move v2, v11

    .line 687
    .local v2, logoVis:Z
    :goto_4
    iget-object v13, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v2, :cond_b

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v13, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 690
    .end local v2           #logoVis:Z
    :cond_1
    and-int/lit8 v12, v0, 0x8

    if-eqz v12, :cond_2

    .line 691
    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_c

    .line 692
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 698
    :cond_2
    :goto_6
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v12, :cond_4

    and-int/lit8 v12, v0, 0x6

    if-eqz v12, :cond_4

    .line 700
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_d

    move v1, v11

    .line 701
    .local v1, homeAsUp:Z
    :goto_7
    iget-object v13, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    move v12, v9

    :goto_8
    if-eqz v13, :cond_miui_1
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_miui_1
    .line 704
    iget-boolean v12, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v12, :cond_3

    .line 705
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 706
    .local v7, titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 707
    .local v6, titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 708
    .local v5, subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_10

    .line 709
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 710
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 711
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 729
    .end local v5           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_9
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-nez v4, :cond_12

    if-eqz v1, :cond_12

    move v10, v11

    :goto_a
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 730
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-nez v4, :cond_13

    if-eqz v1, :cond_13

    move v10, v11

    :goto_b
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 732
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-nez v4, :cond_14

    if-eqz v1, :cond_14

    :goto_c
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 736
    .end local v1           #homeAsUp:Z
    :cond_4
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 737
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_15

    .line 738
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 744
    :cond_5
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 750
    .end local v4           #showHome:Z
    .end local v8           #vis:I
    :goto_e
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_17

    .line 751
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 759
    :goto_f
    return-void

    .line 650
    .end local v0           #flagsChanged:I
    :cond_6
    iget v12, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v12

    goto/16 :goto_0

    .restart local v0       #flagsChanged:I
    :cond_7
    move v4, v9

    .line 668
    goto/16 :goto_1

    .restart local v4       #showHome:Z
    :cond_8
    move v8, v10

    .line 669
    goto/16 :goto_2

    .restart local v8       #vis:I
    :cond_9
    move v3, v9

    .line 673
    goto/16 :goto_3

    :cond_a
    move v2, v9

    .line 686
    goto/16 :goto_4

    .line 687
    .restart local v2       #logoVis:Z
    :cond_b
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 694
    .end local v2           #logoVis:Z
    :cond_c
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_d
    move v1, v9

    .line 700
    goto/16 :goto_7

    .line 701
    .restart local v1       #homeAsUp:Z
    :cond_e
    const/4 v12, 0x4

    goto/16 :goto_8

    :cond_f
    move v12, v10

    goto/16 :goto_8

    .line 714
    .restart local v5       #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6       #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v7       #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10
    if-eqz v1, :cond_11

    .line 715
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 716
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 717
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    .line 720
    :cond_11
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 722
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 723
    iget v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_9

    .end local v5           #subTitleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #titleLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7           #titleUpLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_12
    move v10, v9

    .line 729
    goto/16 :goto_a

    :cond_13
    move v10, v9

    .line 730
    goto :goto_b

    :cond_14
    move v11, v9

    .line 732
    goto :goto_c

    .line 740
    .end local v1           #homeAsUp:Z
    :cond_15
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_d

    .line 746
    .end local v4           #showHome:Z
    .end local v8           #vis:I
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_e

    .line 752
    :cond_17
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_18

    .line 753
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10406a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 756
    :cond_18
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10406a2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_f
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 833
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 836
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 844
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .parameter "tabs"

    .prologue
    const/4 v2, 0x1

    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 454
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 455
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 458
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 462
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 454
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 638
    if-nez p1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 647
    :goto_0
    return-void

    .line 640
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 774
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 763
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 785
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 778
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 781
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .parameter "menu"
    .parameter "cb"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 469
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 539
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 472
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 473
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 476
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 477
    .local v0, builder:Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 478
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_2

    .line 479
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 480
    .local v3, oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 481
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 484
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 485
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView$Injector;->createActionMenuPresenter(Landroid/content/Context;)Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 496
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 497
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x1020260

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 498
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 502
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 504
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 505
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 508
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 509
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 510
    .local v2, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 511
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 512
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 514
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 516
    .end local v2           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 518
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 521
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 523
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 524
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 525
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 526
    .restart local v2       #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    .line 527
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 528
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_6

    .line 529
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 531
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 532
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 535
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMultiWindowReserved(Z)V
    .locals 2
    .parameter "reserveMultiWindow"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 988
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    if-eq v0, p1, :cond_0

    .line 995
    if-eqz p1, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1004
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mReserveMultiWindow:Z

    .line 1005
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMultiWindowMenuButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 788
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 789
    .local v0, oldMode:I
    if-eq p1, v0, :cond_2

    .line 790
    packed-switch v0, :pswitch_data_0

    .line 802
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 826
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 829
    :cond_2
    return-void

    .line 792
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 797
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 804
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 805
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 807
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 809
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 811
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 812
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 815
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 818
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 821
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 822
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 802
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 4
    .parameter "splitActionBar"

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 403
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 405
    .local v0, oldParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    :cond_0
    if-eqz p1, :cond_6

    .line 409
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 419
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    .line 420
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 424
    if-nez p1, :cond_8

    .line 425
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 437
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 439
    :cond_5
    return-void

    .line 414
    .restart local v0       #oldParent:Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 420
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 429
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 434
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 623
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 624
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 630
    .local v0, visible:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 632
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 626
    goto :goto_0

    :cond_3
    move v0, v2

    .line 627
    goto :goto_1

    .restart local v0       #visible:Z
    :cond_4
    move v2, v3

    .line 630
    goto :goto_2
.end method

.method public setSubtitleView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "subTitleView"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 589
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method

.method public setTitleLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "titleLayout"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "titleView"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 367
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 600
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 602
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public updateCollapsed()V
    .locals 7

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1103
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    if-eqz v5, :cond_3

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    .line 1105
    .local v1, childCount:I
    const/4 v4, 0x0

    .line 1106
    .local v4, visibleChildren:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1107
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1110
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    .end local v0           #child:Landroid/view/View;
    :cond_2
    if-nez v4, :cond_3

    .line 1116
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1119
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v4           #visibleChildren:I
    :cond_3
    return-void
.end method
