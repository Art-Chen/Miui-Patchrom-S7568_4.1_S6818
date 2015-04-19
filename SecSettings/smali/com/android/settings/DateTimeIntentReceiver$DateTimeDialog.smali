.class public Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.super Landroid/app/Dialog;
.source "DateTimeIntentReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/DateTimeIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "context"
    .parameter "str"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    .line 113
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 317
    new-instance v9, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;

    invoke-direct {v9, p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;-><init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V

    iput-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 115
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->requestWindowFeature(I)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x200

    const/16 v11, 0x200

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 123
    const-string v9, "ro.build.characteristics"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, deviceType:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, "tablet"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 125
    const/4 v3, 0x1

    .line 127
    .local v3, canStatusBarHide:Z
    :try_start_0
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 129
    .local v8, wm:Landroid/view/IWindowManager;
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, 0x1

    .line 135
    .end local v8           #wm:Landroid/view/IWindowManager;
    :goto_0
    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 138
    .local v0, WMLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 156
    .end local v3           #canStatusBarHide:Z
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    const v9, 0x7f04004e

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setContentView(I)V

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    const v9, 0x7f0b00db

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 161
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v9, 0x7f0b00cd

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 163
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v9, 0x7f0b00d2

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$202(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 165
    const v9, 0x7f0b00d0

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 166
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v9, 0x7f0b00d6

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$402(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 168
    const v9, 0x7f0b00d3

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 169
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v9, 0x7f0b00da

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$602(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 171
    const v9, 0x7f0b00d7

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 172
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 176
    const v9, 0x7f0b00ce

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 177
    const v9, 0x7f0b00cf

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 178
    const v9, 0x7f0b00d9

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, autoTimeEnabled:Z
    const/4 v2, 0x0

    .line 183
    .local v2, autoTimeZoneEnabled:Z
    invoke-static {p2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 184
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f090147

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 185
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    :goto_2
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->is24Hour()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->registerTimeBroadcast()V

    .line 208
    return-void

    .line 129
    .end local v0           #WMLP:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #autoTimeEnabled:Z
    .end local v2           #autoTimeZoneEnabled:Z
    .restart local v3       #canStatusBarHide:Z
    .restart local v8       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 130
    .end local v8           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .line 131
    .local v5, e:Landroid/os/RemoteException;
    const-string v9, "DateTimeIntentReceiver"

    const-string v10, "Failing checking whether status bar can hide"

    invoke-static {v9, v10, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 142
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x55

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 144
    .restart local v0       #WMLP:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x6

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 150
    .end local v0           #WMLP:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #canStatusBarHide:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 152
    .restart local v0       #WMLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 188
    .restart local v1       #autoTimeEnabled:Z
    .restart local v2       #autoTimeZoneEnabled:Z
    :cond_3
    const-string v9, "auto_time"

    invoke-direct {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 189
    const-string v9, "auto_time_zone"

    invoke-direct {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_2

    .line 199
    :catch_1
    move-exception v7

    .line 200
    .local v7, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "DateTimeIntentReceiver"

    const-string v10, "there is no AUTO_TIME_ZONE value on settinbs db so remove automatic timezone layout"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v9, 0x7f0b00d3

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 202
    .local v6, layout:Landroid/widget/LinearLayout;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 410
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 412
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 413
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 414
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 415
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 417
    if-gez p1, :cond_0

    .line 418
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 419
    neg-int p1, p1

    .line 424
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 425
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 427
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 428
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 430
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 432
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 433
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 435
    return-object v0

    .line 421
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerTimeBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    return-void

    .line 280
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 295
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 302
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .line 303
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 304
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss : mIntentReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 379
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/settings/DateTimeIntentReceiver;->access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 380
    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 381
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 382
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 383
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 384
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 389
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 400
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 406
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 387
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 401
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 402
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 395
    .end local v1           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 396
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 403
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 404
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 398
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "tz"

    .prologue
    .line 361
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 362
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 364
    .local v0, date:J
    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 370
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 214
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 215
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "close button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 220
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "manual setup button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v3, i:Landroid/content/Intent;
    const-string v6, "android.settings.DATE_SETTINGS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 228
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 230
    .local v4, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapse()V

    .line 237
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 240
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "exception on doing dismissKeyguardOnNextActivity()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_5

    .line 248
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 249
    .local v1, autoEnabled:Z
    :goto_2
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoDateTime is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_3
    move v1, v7

    .line 248
    goto :goto_2

    .restart local v1       #autoEnabled:Z
    :cond_4
    move v6, v7

    .line 251
    goto :goto_3

    .line 255
    .end local v1           #autoEnabled:Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_8

    .line 256
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    move v1, v6

    .line 257
    .restart local v1       #autoEnabled:Z
    :goto_4
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoTimezone is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_7

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_6
    move v1, v7

    .line 256
    goto :goto_4

    .restart local v1       #autoEnabled:Z
    :cond_7
    move v6, v7

    .line 259
    goto :goto_5

    .line 263
    .end local v1           #autoEnabled:Z
    :cond_8
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 264
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_9

    move v0, v6

    .line 265
    .local v0, Enabled:Z
    :goto_6
    const-string v6, "DateTimeIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "24 hour format is clicked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->set24Hour(Z)V

    .line 267
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v5, timeChanged:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #Enabled:Z
    .end local v5           #timeChanged:Landroid/content/Intent;
    :cond_9
    move v0, v7

    .line 264
    goto :goto_6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 440
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 442
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 328
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 329
    .local v3, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 331
    .local v2, now:Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, time:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, date:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0900d7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_0
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay(), date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timezone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 358
    :goto_1
    return-void

    .line 339
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0900d6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, deviceType:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "tablet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
