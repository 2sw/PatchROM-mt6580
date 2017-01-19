.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I = null

.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final MAX_NITZ_YEAR:I = 0x7f5

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final VDBG:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mCr:Landroid/content/ContentResolver;

.field protected mDataRoaming:Z

.field protected mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field protected mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field protected mNewMaxDataCalls:I

.field protected mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field protected mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method private static synthetic -getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-com_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 11
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v8, Landroid/telephony/CellInfoGsm;

    invoke-direct {v8}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 105
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 106
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 107
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 108
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 117
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 123
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 128
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 135
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 139
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 143
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 152
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 155
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 162
    new-instance v7, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v7}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 180
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 208
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 220
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 221
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 224
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 225
    .local v4, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v7, "ServiceStateTracker"

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xd

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x2

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x17

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    const-string/jumbo v7, "ro.mtk_ims_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x70

    invoke-interface {v7, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 242
    const-string/jumbo v8, "airplane_mode_on"

    .line 240
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "airplaneMode":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 245
    const-string/jumbo v8, "enable_cellular_on_boot"

    .line 243
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 246
    .local v2, "enableCellularOnBoot":I
    if-lez v2, :cond_1

    if-gtz v0, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 249
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 250
    const-string/jumbo v7, "auto_time"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 251
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 249
    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 253
    const-string/jumbo v7, "auto_time_zone"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 254
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 252
    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 262
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 265
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v5, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    return-void
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1675
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1676
    const-string/jumbo v5, "phone"

    .line 1675
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1677
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v5

    .line 1675
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 1678
    .local v3, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1679
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1682
    .local v1, "equalsMcc":Z
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1683
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1682
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1686
    .end local v1    # "equalsMcc":Z
    :goto_0
    return v1

    .line 1684
    .restart local v1    # "equalsMcc":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1479
    move v2, p1

    .line 1480
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    .line 1481
    const v6, 0x36ee80

    sub-int/2addr v2, v6

    .line 1483
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v5

    .line 1484
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1485
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1486
    .local v0, "d":Ljava/util/Date;
    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 1487
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1488
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p1, :cond_2

    .line 1489
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p2, :cond_2

    .line 1490
    move-object v1, v3

    .line 1495
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 1486
    .restart local v1    # "guess":Ljava/util/TimeZone;
    .restart local v3    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2024
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2025
    const-string/jumbo v4, "auto_time"

    .line 2024
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getAutoTimeZone()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2033
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2034
    const-string/jumbo v4, "auto_time_zone"

    .line 2033
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 2035
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1469
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1470
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1472
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1474
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1475
    return-object v0

    .line 1472
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1474
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    .line 2186
    const/4 v2, 0x1

    .line 2185
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private isGprsConsistent(II)Z
    .locals 2
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1461
    if-nez p2, :cond_0

    .line 1462
    if-nez p1, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1462
    goto :goto_0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const v6, 0x107003e

    const/4 v5, 0x0

    .line 1700
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v3

    .line 1703
    .local v3, "subId":I
    if-ltz v3, :cond_1

    .line 1704
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1711
    .local v1, "numericArray":[Ljava/lang/String;
    :goto_0
    array-length v4, v1

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    .line 1712
    :cond_0
    return v5

    .line 1707
    .end local v1    # "numericArray":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "numericArray":[Ljava/lang/String;
    goto :goto_0

    .line 1715
    :cond_2
    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1716
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1717
    const/4 v4, 0x1

    return v4

    .line 1715
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1720
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 8
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const v6, 0x107003f

    const/4 v5, 0x0

    .line 1724
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1726
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v3

    .line 1727
    .local v3, "subId":I
    if-ltz v3, :cond_1

    .line 1728
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, "numericArray":[Ljava/lang/String;
    :goto_0
    array-length v4, v1

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    .line 1737
    :cond_0
    return v5

    .line 1732
    .end local v1    # "numericArray":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "numericArray":[Ljava/lang/String;
    goto :goto_0

    .line 1740
    :cond_2
    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1741
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1742
    const/4 v4, 0x1

    return v4

    .line 1740
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1745
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1655
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1656
    const-string/jumbo v6, "phone"

    .line 1655
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v6

    .line 1655
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 1659
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1662
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1663
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 1665
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    :goto_2
    return v1

    .line 1662
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "equalsOnsl":Z
    goto :goto_0

    .line 1663
    .end local v0    # "equalsOnsl":Z
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "equalsOnss":Z
    goto :goto_1

    .line 1665
    .end local v1    # "equalsOnss":Z
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1524
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 1526
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1528
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 1529
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1530
    .local v0, "ints":[I
    aget v2, v0, v5

    .line 1533
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 1534
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    .line 1532
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1536
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_0

    .line 1538
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 1539
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    move v3, v4

    .line 1537
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1541
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    .line 1540
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 1544
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1546
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1547
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1548
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1559
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1560
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1562
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1607
    :cond_2
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 1609
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1523
    return-void

    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_4
    move v3, v4

    .line 1533
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 1534
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 1538
    goto :goto_1

    :cond_7
    move v3, v5

    .line 1539
    goto :goto_1

    :cond_8
    move v4, v5

    .line 1541
    goto :goto_2

    .line 1549
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1550
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1551
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 1563
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1565
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1566
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1568
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1570
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1571
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1582
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1583
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    .line 1582
    if-eqz v3, :cond_13

    .line 1584
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1586
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1572
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1574
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1575
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1577
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1578
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1580
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1587
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1589
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1590
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1592
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1595
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1597
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1598
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1600
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1601
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1603
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 1499
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 1502
    return-void

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1508
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1513
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1498
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2087
    const-string/jumbo v1, "auto_time"

    .line 2086
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2088
    return-void

    .line 2091
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2092
    const-string/jumbo v1, " mSavedAtTime="

    .line 2091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2092
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2091
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2094
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 2095
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    .line 2095
    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2085
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2102
    const-string/jumbo v1, "auto_time_zone"

    .line 2101
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    return-void

    .line 2105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2100
    :cond_1
    return-void
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2045
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2046
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2044
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2040
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2078
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2079
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2081
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2082
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2076
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 2056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2058
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2059
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2060
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2062
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2063
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2055
    return-void
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    .prologue
    .line 2117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setNotification: create notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2121
    const v9, 0x1120067

    .line 2120
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 2122
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_0

    .line 2123
    const-string/jumbo v8, "Ignore all the notifications"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2124
    return-void

    .line 2127
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2130
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, ""

    .line 2131
    .local v1, "details":Ljava/lang/CharSequence;
    const v8, 0x104012b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2132
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    .line 2134
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    .line 2160
    :goto_0
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setNotification: put notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2161
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2161
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2163
    const/4 v9, 0x1

    .line 2161
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2164
    const v9, 0x108008a

    .line 2161
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2167
    const v10, 0x1060070

    .line 2166
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 2161
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2173
    const-string/jumbo v8, "notification"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 2172
    check-cast v6, Landroid/app/NotificationManager;

    .line 2175
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    if-eq p1, v8, :cond_1

    const/16 v8, 0x3ec

    if-ne p1, v8, :cond_3

    .line 2177
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2116
    :goto_1
    return-void

    .line 2136
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    int-to-long v2, v8

    .line 2137
    .local v2, "dataSubId":J
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_2

    .line 2138
    return-void

    .line 2140
    :cond_2
    const/16 v5, 0x378

    .line 2141
    const v8, 0x104012c

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2144
    .end local v2    # "dataSubId":J
    :pswitch_2
    const/16 v5, 0x378

    .line 2145
    goto/16 :goto_0

    .line 2147
    :pswitch_3
    const v8, 0x104012f

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2150
    :pswitch_4
    const v8, 0x104012e

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2153
    :pswitch_5
    const v8, 0x104012d

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 2180
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2134
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 1057
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1056
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 32
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 1848
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1849
    .local v20, "start":J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1850
    const-string/jumbo v27, " start="

    .line 1849
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1850
    const-string/jumbo v27, " delay="

    .line 1849
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1850
    sub-long v28, v20, p2

    .line 1849
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1856
    :try_start_0
    const-string/jumbo v26, "GMT"

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 1858
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 1859
    const/16 v26, 0x10

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1861
    const-string/jumbo v26, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1863
    .local v17, "nitzSubs":[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v24, v0

    .line 1864
    .local v24, "year":I
    const/16 v26, 0x7f5

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 1865
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ year: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " exceeds limit, skip NITZ time update"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1866
    return-void

    .line 1868
    :cond_0
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1871
    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v16, v26, -0x1

    .line 1872
    .local v16, "month":I
    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1874
    const/16 v26, 0x2

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1875
    .local v7, "date":I
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 1877
    const/16 v26, 0x3

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1878
    .local v10, "hour":I
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 1880
    const/16 v26, 0x4

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1881
    .local v13, "minute":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v6, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 1883
    const/16 v26, 0x5

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1884
    .local v18, "second":I
    const/16 v26, 0xd

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1886
    const/16 v26, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v19, 0x1

    .line 1888
    .local v19, "sign":Z
    :goto_0
    const/16 v26, 0x6

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1890
    .local v22, "tzOffset":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    const/16 v26, 0x7

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1900
    .local v8, "dst":I
    :goto_1
    if-eqz v19, :cond_9

    const/16 v26, 0x1

    :goto_2
    mul-int v26, v26, v22

    mul-int/lit8 v26, v26, 0xf

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    .line 1902
    const/16 v25, 0x0

    .line 1908
    .local v25, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 1909
    const/16 v26, 0x8

    aget-object v26, v17, v26

    const/16 v27, 0x21

    const/16 v28, 0x2f

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    .line 1910
    .local v23, "tzname":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 1916
    .local v25, "zone":Ljava/util/TimeZone;
    const-string/jumbo v26, "GMT"

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    if-eqz v22, :cond_1

    .line 1917
    const/16 v25, 0x0

    .line 1921
    .end local v23    # "tzname":Ljava/lang/String;
    .end local v25    # "zone":Ljava/util/TimeZone;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v26

    .line 1922
    const-string/jumbo v27, "phone"

    .line 1921
    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v27

    .line 1921
    invoke-virtual/range {v26 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v12

    .line 1925
    .local v12, "iso":Ljava/lang/String;
    if-nez v25, :cond_2

    .line 1927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1928
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_b

    .line 1929
    if-eqz v8, :cond_a

    const/16 v26, 0x1

    .line 1930
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    .line 1929
    move/from16 v0, v22

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v12}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 1942
    :cond_2
    :goto_4
    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 1947
    :cond_3
    :goto_5
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1948
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 1949
    if-eqz v8, :cond_f

    const/16 v26, 0x1

    :goto_6
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 1950
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 1953
    :cond_4
    if-eqz v25, :cond_6

    .line 1954
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1955
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1957
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1960
    :cond_6
    const-string/jumbo v26, "gsm.ignore-nitz"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1961
    .local v11, "ignore":Ljava/lang/String;
    if-eqz v11, :cond_10

    const-string/jumbo v26, "yes"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 1962
    const-string/jumbo v26, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1963
    return-void

    .line 1886
    .end local v8    # "dst":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    :cond_7
    const/16 v19, 0x0

    .restart local v19    # "sign":Z
    goto/16 :goto_0

    .line 1891
    .restart local v22    # "tzOffset":I
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "dst":I
    goto/16 :goto_1

    .line 1900
    :cond_9
    const/16 v26, -0x1

    goto/16 :goto_2

    .line 1929
    .restart local v12    # "iso":Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1937
    :cond_b
    if-eqz v8, :cond_c

    const/16 v26, 0x1

    :goto_7
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v25

    .restart local v25    # "zone":Ljava/util/TimeZone;
    goto/16 :goto_4

    .end local v25    # "zone":Ljava/util/TimeZone;
    :cond_c
    const/16 v26, 0x0

    goto :goto_7

    .line 1942
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_e

    const/16 v26, 0x1

    :goto_8
    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    goto/16 :goto_5

    :cond_e
    const/16 v26, 0x0

    goto :goto_8

    .line 1949
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 1967
    .restart local v11    # "ignore":Ljava/lang/String;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1969
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v14, v26, p2

    .line 1973
    .local v14, "millisSinceNitzReceived":J
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_11

    .line 1976
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2015
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1980
    return-void

    .line 1983
    :cond_11
    const-wide/32 v26, 0x7fffffff

    cmp-long v26, v14, v26

    if-lez v26, :cond_12

    .line 1986
    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1987
    const-wide/32 v28, 0x5265c00

    div-long v28, v14, v28

    .line 1986
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1988
    const-string/jumbo v27, " days"

    .line 1986
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2015
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1990
    return-void

    .line 1994
    :cond_12
    long-to-int v0, v14

    move/from16 v26, v0

    const/16 v27, 0xe

    :try_start_5
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1997
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ: Setting time of day to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1998
    const-string/jumbo v27, " NITZ receive delay(ms): "

    .line 1997
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1999
    const-string/jumbo v27, " gained(ms): "

    .line 1997
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2000
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v28, v28, v30

    .line 1997
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2001
    const-string/jumbo v27, " from "

    .line 1997
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2005
    const-string/jumbo v26, "GsmSST"

    const-string/jumbo v27, "NITZ: after Setting time of day"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    .end local v14    # "millisSinceNitzReceived":J
    :cond_13
    const-string/jumbo v26, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 2013
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2015
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1844
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    :goto_9
    return-void

    .line 2014
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v10    # "hour":I
    .restart local v11    # "ignore":Ljava/lang/String;
    .restart local v12    # "iso":Ljava/lang/String;
    .restart local v13    # "minute":I
    .restart local v16    # "month":I
    .restart local v17    # "nitzSubs":[Ljava/lang/String;
    .restart local v18    # "second":I
    .restart local v19    # "sign":Z
    .restart local v22    # "tzOffset":I
    .restart local v24    # "year":I
    :catchall_0
    move-exception v26

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2014
    throw v26
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2017
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    :catch_0
    move-exception v9

    .line 2018
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " ex="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 278
    const-string/jumbo v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 288
    const-string/jumbo v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsRegistrationInfo(Landroid/os/Handler;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 276
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2230
    const-string/jumbo v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurDataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2229
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 300
    const-string/jumbo v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 14

    .prologue
    const v13, 0x7fffffff

    const/4 v12, 0x0

    .line 1776
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_0

    .line 1777
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1778
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v10

    .line 1780
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 1781
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    .line 1794
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 1795
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ci$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 1796
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_2

    move-object v3, v7

    .line 1797
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 1798
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 1799
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    .line 1800
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    .line 1799
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1801
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1802
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret GSM info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1803
    return-object v6

    .line 1804
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_3

    move-object v5, v7

    .line 1805
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 1806
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 1807
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    .line 1808
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    .line 1807
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1809
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret WCDMA info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1811
    return-object v6

    .line 1812
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_1

    .line 1813
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_1

    :cond_4
    move-object v4, v7

    .line 1815
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 1816
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 1817
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 1818
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 1819
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    .line 1820
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    .line 1819
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1821
    invoke-virtual {v6, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1823
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): possible LTE cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1829
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X ret best answer cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1831
    return-object v6

    .line 1834
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "ci$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1836
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v10
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 316
    const-string/jumbo v18, "GsmSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Received message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 317
    const-string/jumbo v20, "["

    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 317
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 317
    const-string/jumbo v20, "] while being destroyed. Ignoring."

    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 320
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 548
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 309
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 329
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 338
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 343
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 350
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-nez v18, :cond_2

    .line 352
    return-void

    .line 354
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 355
    .local v4, "ar":Landroid/os/AsyncResult;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 361
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 363
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 364
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    .line 365
    .local v16, "states":[Ljava/lang/String;
    const/4 v8, -0x1

    .line 366
    .local v8, "lac":I
    const/4 v5, -0x1

    .line 367
    .local v5, "cid":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 369
    const/16 v18, 0x1

    :try_start_0
    aget-object v18, v16, v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 370
    const/16 v18, 0x1

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 372
    :cond_3
    const/16 v18, 0x2

    aget-object v18, v16, v18

    if-eqz v18, :cond_4

    const/16 v18, 0x2

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 373
    const/16 v18, 0x2

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 379
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 385
    .end local v5    # "cid":I
    .end local v8    # "lac":I
    .end local v16    # "states":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 375
    .restart local v5    # "cid":I
    .restart local v8    # "lac":I
    .restart local v16    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 376
    .local v7, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v18, "GsmSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "error parsing location: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "cid":I
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    .end local v8    # "lac":I
    .end local v16    # "states":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 394
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 400
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 404
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 406
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    const/16 v19, 0x0

    aget-object v13, v18, v19

    check-cast v13, Ljava/lang/String;

    .line 407
    .local v13, "nitzString":Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 409
    .local v14, "nitzReceiveTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 416
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "nitzString":Ljava/lang/String;
    .end local v14    # "nitzReceiveTime":J
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 420
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 422
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 426
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 435
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 437
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 443
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 445
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 446
    .local v12, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 450
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "message":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 451
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 452
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    invoke-static/range {v18 .. v18}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v18

    .line 453
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    .line 452
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 454
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 459
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 461
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 462
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 467
    :goto_2
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 468
    .restart local v12    # "message":Landroid/os/Message;
    const/16 v17, 0x7

    .line 470
    .local v17, "toggledNetworkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 464
    .end local v12    # "message":Landroid/os/Message;
    .end local v17    # "toggledNetworkType":I
    :cond_6
    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 474
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 484
    :cond_7
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 479
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 480
    .local v9, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    aput-object v18, v19, v20

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v20, 0x1

    aput-object v18, v19, v20

    .line 480
    const v18, 0xc3bb

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 482
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_3

    .line 481
    :cond_9
    const/16 v18, -0x1

    goto :goto_4

    .line 491
    .end local v9    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_10
    const-string/jumbo v18, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 495
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 499
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    .line 500
    .local v6, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 501
    monitor-enter p0

    .line 502
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 503
    const-string/jumbo v18, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 505
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    .line 507
    :cond_a
    :try_start_2
    const-string/jumbo v18, "EVENT_ALL_DATA_DISCONNECTED is stale"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 501
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 513
    .end local v6    # "dds":I
    :sswitch_12
    const-string/jumbo v18, "EVENT_CHANGE_IMS_STATE:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 519
    :sswitch_13
    const-string/jumbo v18, "EVENT_IMS_CAPABILITY_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 526
    :sswitch_14
    const/4 v11, -0x1

    .line 527
    .local v11, "mImsRegInfo":I
    const/4 v10, -0x1

    .line 529
    .local v10, "mImsExtInfo":I
    const-string/jumbo v18, "handle EVENT_IMS_REGISTRATION_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 540
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    const/16 v19, 0x0

    aget v11, v18, v19

    .line 541
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    const/16 v19, 0x1

    aget v18, v18, v19

    if-lez v18, :cond_b

    .line 542
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    const/16 v19, 0x1

    aget v10, v18, v19

    .line 544
    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ImsRegistrationInfoResult ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_b
        0x13 -> :sswitch_e
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x2d -> :sswitch_12
        0x30 -> :sswitch_13
        0x70 -> :sswitch_14
        0x3e9 -> :sswitch_11
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 24
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 761
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    return-void

    .line 763
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 764
    const/4 v6, 0x0

    .line 766
    .local v6, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 767
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 770
    .end local v6    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v20, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_2

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    .line 773
    return-void

    .line 776
    :cond_2
    sget-object v20, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    if-eq v6, v0, :cond_3

    .line 777
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 778
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    .line 777
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 941
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v22, v20, v21

    add-int/lit8 v22, v22, -0x1

    aput v22, v20, v21

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_4

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateRoamingState()V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 756
    :cond_4
    return-void

    .line 781
    :cond_5
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 783
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    .line 784
    .local v18, "states":[Ljava/lang/String;
    const/4 v12, -0x1

    .line 785
    .local v12, "lac":I
    const/4 v3, -0x1

    .line 786
    .local v3, "cid":I
    const/16 v19, 0x0

    .line 787
    .local v19, "type":I
    const/16 v16, 0x4

    .line 788
    .local v16, "regState":I
    const/4 v15, -0x1

    .line 789
    .local v15, "reasonRegStateDenied":I
    const/4 v14, -0x1

    .line 790
    .local v14, "psc":I
    const/4 v4, 0x0

    .line 791
    .local v4, "cssIndicator":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v20, :cond_a

    .line 793
    const/16 v20, 0x0

    :try_start_1
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 794
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 795
    const/16 v20, 0x1

    aget-object v20, v18, v20

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 796
    const/16 v20, 0x1

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 798
    :cond_6
    const/16 v20, 0x2

    aget-object v20, v18, v20

    if-eqz v20, :cond_7

    const/16 v20, 0x2

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 799
    const/16 v20, 0x2

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 803
    :cond_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    const/16 v20, 0x3

    aget-object v20, v18, v20

    if-eqz v20, :cond_8

    .line 804
    const/16 v20, 0x3

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 807
    :cond_8
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    const/16 v20, 0x7

    aget-object v20, v18, v20

    if-eqz v20, :cond_9

    .line 808
    const/16 v20, 0x7

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 810
    :cond_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 811
    const/16 v20, 0xe

    aget-object v20, v18, v20

    if-eqz v20, :cond_a

    const/16 v20, 0xe

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 812
    const/16 v20, 0xe

    aget-object v20, v18, v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 820
    :cond_a
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/ServiceState;->setState(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 825
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 826
    const/16 v20, 0xd

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 827
    :cond_b
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 829
    const/16 v20, 0xd

    :try_start_3
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 831
    .local v17, "rejCode":I
    const/16 v20, 0xa

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 832
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Posting Managed roaming intent sub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v21

    .line 832
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 835
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v20, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "subscription"

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v21

    .line 836
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 845
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "rejCode":I
    :cond_c
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 846
    const v21, 0x1120065

    .line 845
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 847
    .local v11, "isVoiceCapable":Z
    const/16 v20, 0xd

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 848
    const/16 v20, 0xa

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 847
    :cond_d
    if-eqz v11, :cond_f

    .line 852
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 858
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 937
    .end local v3    # "cid":I
    .end local v4    # "cssIndicator":I
    .end local v11    # "isVoiceCapable":Z
    .end local v12    # "lac":I
    .end local v14    # "psc":I
    .end local v15    # "reasonRegStateDenied":I
    .end local v16    # "regState":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v8

    .line 938
    .local v8, "ex":Ljava/lang/RuntimeException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v4    # "cssIndicator":I
    .restart local v12    # "lac":I
    .restart local v14    # "psc":I
    .restart local v15    # "reasonRegStateDenied":I
    .restart local v16    # "regState":I
    .restart local v18    # "states":[Ljava/lang/String;
    .restart local v19    # "type":I
    :catch_1
    move-exception v7

    .line 816
    .local v7, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "error parsing RegistrationState: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 840
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v7

    .line 841
    .restart local v7    # "ex":Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "error parsing regCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 849
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    .restart local v11    # "isVoiceCapable":Z
    :cond_e
    const/16 v20, 0xc

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 850
    const/16 v20, 0xe

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 854
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_3

    .line 864
    .end local v3    # "cid":I
    .end local v4    # "cssIndicator":I
    .end local v11    # "isVoiceCapable":Z
    .end local v12    # "lac":I
    .end local v14    # "psc":I
    .end local v15    # "reasonRegStateDenied":I
    .end local v16    # "regState":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    .line 866
    .restart local v18    # "states":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 867
    .restart local v19    # "type":I
    const/16 v16, 0x4

    .line 868
    .restart local v16    # "regState":I
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 869
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 870
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    if-lez v20, :cond_12

    .line 872
    const/16 v20, 0x0

    :try_start_6
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 875
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    const/16 v20, 0x3

    aget-object v20, v18, v20

    if-eqz v20, :cond_10

    .line 876
    const-string/jumbo v20, "null"

    const/16 v21, 0x3

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 879
    :cond_10
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_11

    .line 880
    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 881
    const-string/jumbo v20, "null"

    const/16 v21, 0x4

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 884
    :cond_11
    :goto_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_12

    const/16 v20, 0x5

    aget-object v20, v18, v20

    if-eqz v20, :cond_12

    .line 885
    const-string/jumbo v20, "null"

    const/16 v21, 0x5

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v20

    if-eqz v20, :cond_15

    .line 892
    :cond_12
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v5

    .line 893
    .local v5, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 894
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 897
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 898
    const-string/jumbo v21, " regState="

    .line 897
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 899
    const-string/jumbo v21, " dataRadioTechnology="

    .line 897
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 877
    .end local v5    # "dataRegState":I
    :cond_13
    const/16 v20, 0x3

    :try_start_8
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_4

    .line 882
    :cond_14
    const/16 v20, 0x4

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    .line 888
    :catch_3
    move-exception v7

    .line 889
    .restart local v7    # "ex":Ljava/lang/NumberFormatException;
    :try_start_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_6

    .line 886
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_15
    const/16 v20, 0x5

    :try_start_a
    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_6

    .line 905
    .end local v16    # "regState":I
    .end local v18    # "states":[Ljava/lang/String;
    .end local v19    # "type":I
    :sswitch_2
    :try_start_b
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    .line 907
    .local v13, "opNames":[Ljava/lang/String;
    if-eqz v13, :cond_3

    array-length v0, v13

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v20

    if-eqz v20, :cond_16

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    .line 911
    :goto_7
    if-eqz v2, :cond_17

    .line 912
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v21, v13, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v2, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    :cond_16
    const/4 v2, 0x0

    .local v2, "brandOverride":Ljava/lang/String;
    goto :goto_7

    .line 915
    .end local v2    # "brandOverride":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v13, v21

    const/16 v22, 0x1

    aget-object v22, v13, v22

    const/16 v23, 0x2

    aget-object v23, v13, v23

    invoke-virtual/range {v20 .. v23}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    .end local v13    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    .line 923
    .local v10, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    aget v20, v10, v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 924
    const/16 v20, 0x0

    aget v20, v10, v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v20

    if-nez v20, :cond_3

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 931
    const-string/jumbo v20, " Forcing Automatic Network Selection, manual selection is not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 923
    :cond_18
    const/16 v20, 0x0

    goto :goto_8

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 605
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1764
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 1765
    return v0

    .line 1767
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2220
    const-string/jumbo v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2225
    const-string/jumbo v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    .prologue
    .line 2341
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2340
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2191
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 2192
    return-void

    .line 2195
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2197
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_3

    .line 2198
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 2199
    const-string/jumbo v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_1

    .line 2202
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2204
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2205
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2207
    :cond_2
    if-eqz v0, :cond_3

    .line 2208
    const-string/jumbo v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2209
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2210
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2211
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2212
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 2213
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2190
    :cond_3
    return-void
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1070
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 1073
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-getcom_android_internal_telephony_CommandsInterface$RadioStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1099
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1102
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x6

    .line 1101
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1100
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1107
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x5

    .line 1106
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1105
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1112
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/4 v2, 0x4

    .line 1111
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1110
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1117
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    const/16 v2, 0xe

    .line 1116
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1115
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1069
    :goto_1
    return-void

    .line 1075
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1078
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1079
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 1084
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1086
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1087
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1088
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1089
    const/16 v1, 0x12

    if-eq v1, v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 48

    .prologue
    .line 1123
    sget-boolean v43, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v43, :cond_0

    const-string/jumbo v43, "telephony.test.forceRoaming"

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1127
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 1131
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1132
    const-string/jumbo v44, "] newSS=["

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1132
    const-string/jumbo v44, "]"

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1133
    const-string/jumbo v44, " oldMaxDataCalls="

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1134
    const-string/jumbo v44, " mNewMaxDataCalls="

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1135
    const-string/jumbo v44, " oldReasonDataDenied="

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1136
    const-string/jumbo v44, " mNewReasonDataDenied="

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v44, v0

    .line 1131
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    if-eqz v43, :cond_18

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    if-nez v43, :cond_17

    const/16 v23, 0x1

    .line 1144
    .local v23, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    if-nez v43, :cond_1a

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    if-eqz v43, :cond_19

    const/16 v19, 0x1

    .line 1148
    .local v19, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    if-eqz v43, :cond_1c

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    if-nez v43, :cond_1b

    const/16 v20, 0x1

    .line 1152
    .local v20, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    if-nez v43, :cond_1e

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    if-eqz v43, :cond_1d

    const/16 v21, 0x1

    .line 1156
    .local v21, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1f

    const/16 v16, 0x1

    .line 1159
    .local v16, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_20

    const/16 v26, 0x1

    .line 1162
    .local v26, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_21

    const/16 v25, 0x1

    .line 1165
    .local v25, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_22

    const/16 v24, 0x1

    .line 1167
    .local v24, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_23

    const/4 v14, 0x0

    .line 1169
    .local v14, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v43

    if-nez v43, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v28

    .line 1171
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v43

    if-eqz v43, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v43

    if-eqz v43, :cond_25

    :cond_1
    const/16 v27, 0x0

    .line 1173
    .local v27, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v43

    if-nez v43, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v18

    .line 1175
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v43

    if-eqz v43, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v43

    if-eqz v43, :cond_27

    :cond_2
    const/16 v17, 0x0

    .line 1177
    .local v17, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_28

    const/16 v22, 0x0

    .line 1179
    .local v22, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_29

    const/4 v15, 0x1

    .line 1181
    .local v15, "hasCssIndicatorChanged":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v43

    const-string/jumbo v44, "phone"

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/TelephonyManager;

    .line 1184
    .local v36, "tm":Landroid/telephony/TelephonyManager;
    if-nez v26, :cond_3

    if-eqz v16, :cond_4

    .line 1185
    :cond_3
    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x0

    aput-object v44, v43, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x1

    aput-object v44, v43, v45

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x2

    aput-object v44, v43, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x3

    aput-object v44, v43, v45

    .line 1185
    const v44, 0xc3c2

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1193
    :cond_4
    if-eqz v25, :cond_6

    .line 1194
    const/4 v9, -0x1

    .line 1195
    .local v9, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v30, v0

    .line 1196
    .local v30, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    .line 1201
    :cond_5
    const/16 v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x0

    aput-object v44, v43, v45

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x1

    aput-object v44, v43, v45

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x2

    aput-object v44, v43, v45

    .line 1201
    const v44, 0xc3cb

    move/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1205
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "RAT switched "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    invoke-static/range {v44 .. v44}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v44

    .line 1205
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1207
    const-string/jumbo v44, " -> "

    .line 1205
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    .line 1208
    invoke-static/range {v44 .. v44}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v44

    .line 1205
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1209
    const-string/jumbo v44, " at cell "

    .line 1205
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1214
    .end local v9    # "cid":I
    .end local v30    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    .line 1215
    .local v37, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1216
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v34, v0

    .line 1222
    .local v34, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1223
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1228
    if-eqz v25, :cond_7

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 1232
    :cond_7
    if-eqz v24, :cond_8

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v44

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    .line 1235
    const/16 v44, 0x12

    move/from16 v0, v44

    move/from16 v1, v43

    if-ne v0, v1, :cond_8

    .line 1237
    const-string/jumbo v43, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1241
    :cond_8
    if-eqz v23, :cond_9

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1245
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v44, v0

    .line 1245
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1246
    const-string/jumbo v44, " changing to false"

    .line 1245
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1248
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1251
    :cond_9
    if-eqz v14, :cond_b

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v36

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v33

    .line 1259
    .local v33, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    .line 1260
    .local v32, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, v36

    move/from16 v1, v43

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v43

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1263
    if-nez v32, :cond_2a

    .line 1264
    const-string/jumbo v43, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    const-string/jumbo v44, ""

    move-object/from16 v0, v36

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1266
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1267
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1380
    :cond_a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v44

    move-object/from16 v0, v36

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 1383
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "Broadcasting ServiceState : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1392
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_b
    if-eqz v21, :cond_c

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1396
    :cond_c
    if-nez v16, :cond_d

    if-eqz v24, :cond_e

    .line 1397
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v43

    .line 1399
    const/16 v44, 0x12

    move/from16 v0, v44

    move/from16 v1, v43

    if-ne v0, v1, :cond_37

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    const-string/jumbo v44, "iwlanAvailable"

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1407
    :cond_e
    :goto_10
    if-eqz v28, :cond_f

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1411
    :cond_f
    if-eqz v20, :cond_10

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1416
    :cond_10
    if-eqz v27, :cond_11

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1420
    :cond_11
    if-eqz v18, :cond_12

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1424
    :cond_12
    if-eqz v17, :cond_13

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1428
    :cond_13
    if-eqz v22, :cond_14

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1432
    :cond_14
    if-eqz v15, :cond_15

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    const-string/jumbo v44, "cssIndicatorChanged"

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1436
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v43

    if-nez v43, :cond_39

    .line 1437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v43, v0

    if-nez v43, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_38

    .line 1122
    :cond_16
    :goto_11
    return-void

    .line 1141
    .end local v14    # "hasChanged":Z
    .end local v15    # "hasCssIndicatorChanged":Z
    .end local v16    # "hasDataRegStateChanged":Z
    .end local v17    # "hasDataRoamingOff":Z
    .end local v19    # "hasDeregistered":Z
    .end local v20    # "hasGprsAttached":Z
    .end local v21    # "hasGprsDetached":Z
    .end local v22    # "hasLocationChanged":Z
    .end local v23    # "hasRegistered":Z
    .end local v24    # "hasRilDataRadioTechnologyChanged":Z
    .end local v25    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v26    # "hasVoiceRegStateChanged":Z
    .end local v27    # "hasVoiceRoamingOff":Z
    .end local v34    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v36    # "tm":Landroid/telephony/TelephonyManager;
    .end local v37    # "tss":Landroid/telephony/ServiceState;
    :cond_17
    const/16 v23, 0x0

    .restart local v23    # "hasRegistered":Z
    goto/16 :goto_0

    .line 1140
    .end local v23    # "hasRegistered":Z
    :cond_18
    const/16 v23, 0x0

    .restart local v23    # "hasRegistered":Z
    goto/16 :goto_0

    .line 1145
    :cond_19
    const/16 v19, 0x0

    .restart local v19    # "hasDeregistered":Z
    goto/16 :goto_1

    .line 1144
    .end local v19    # "hasDeregistered":Z
    :cond_1a
    const/16 v19, 0x0

    .restart local v19    # "hasDeregistered":Z
    goto/16 :goto_1

    .line 1149
    :cond_1b
    const/16 v20, 0x0

    .restart local v20    # "hasGprsAttached":Z
    goto/16 :goto_2

    .line 1148
    .end local v20    # "hasGprsAttached":Z
    :cond_1c
    const/16 v20, 0x0

    .restart local v20    # "hasGprsAttached":Z
    goto/16 :goto_2

    .line 1153
    :cond_1d
    const/16 v21, 0x0

    .restart local v21    # "hasGprsDetached":Z
    goto/16 :goto_3

    .line 1152
    .end local v21    # "hasGprsDetached":Z
    :cond_1e
    const/16 v21, 0x0

    .restart local v21    # "hasGprsDetached":Z
    goto/16 :goto_3

    .line 1156
    :cond_1f
    const/16 v16, 0x0

    .restart local v16    # "hasDataRegStateChanged":Z
    goto/16 :goto_4

    .line 1159
    :cond_20
    const/16 v26, 0x0

    .restart local v26    # "hasVoiceRegStateChanged":Z
    goto/16 :goto_5

    .line 1162
    :cond_21
    const/16 v25, 0x0

    .restart local v25    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_6

    .line 1165
    :cond_22
    const/16 v24, 0x0

    .restart local v24    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_7

    .line 1167
    :cond_23
    const/4 v14, 0x1

    .restart local v14    # "hasChanged":Z
    goto/16 :goto_8

    .line 1169
    :cond_24
    const/16 v28, 0x0

    .local v28, "hasVoiceRoamingOn":Z
    goto/16 :goto_9

    .line 1171
    .end local v28    # "hasVoiceRoamingOn":Z
    :cond_25
    const/16 v27, 0x1

    .restart local v27    # "hasVoiceRoamingOff":Z
    goto/16 :goto_a

    .line 1173
    :cond_26
    const/16 v18, 0x0

    .local v18, "hasDataRoamingOn":Z
    goto/16 :goto_b

    .line 1175
    .end local v18    # "hasDataRoamingOn":Z
    :cond_27
    const/16 v17, 0x1

    .restart local v17    # "hasDataRoamingOff":Z
    goto/16 :goto_c

    .line 1177
    :cond_28
    const/16 v22, 0x1

    .restart local v22    # "hasLocationChanged":Z
    goto/16 :goto_d

    .line 1179
    :cond_29
    const/4 v15, 0x0

    .restart local v15    # "hasCssIndicatorChanged":Z
    goto/16 :goto_e

    .line 1269
    .restart local v32    # "operatorNumeric":Ljava/lang/String;
    .restart local v33    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v34    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v36    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v37    # "tss":Landroid/telephony/ServiceState;
    :cond_2a
    const-string/jumbo v29, ""

    .line 1270
    .local v29, "iso":Ljava/lang/String;
    const-string/jumbo v31, ""

    .line 1272
    .local v31, "mcc":Ljava/lang/String;
    const/16 v43, 0x0

    const/16 v44, 0x3

    :try_start_0
    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1273
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 1280
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v43

    move-object/from16 v0, v36

    move/from16 v1, v43

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1281
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1283
    const/16 v41, 0x0

    .line 1285
    .local v41, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v43, v0

    if-nez v43, :cond_2b

    const-string/jumbo v43, "000"

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_2d

    .line 1312
    .end local v41    # "zone":Ljava/util/TimeZone;
    :cond_2b
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    .line 1313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v44, v0

    .line 1312
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_a

    .line 1317
    const-string/jumbo v43, "persist.sys.timezone"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1319
    .local v42, "zoneName":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1320
    const-string/jumbo v44, "\' mZoneOffset="

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v44, v0

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1320
    const-string/jumbo v44, " mZoneDst="

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v44, v0

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1321
    const-string/jumbo v44, " iso-cc=\'"

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1322
    const-string/jumbo v44, "\' iso-cc-idx="

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1322
    sget-object v44, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v44

    .line 1319
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1325
    const-string/jumbo v43, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v43, v0

    if-eqz v43, :cond_32

    .line 1328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v41

    .line 1329
    .local v41, "zone":Ljava/util/TimeZone;
    const-string/jumbo v43, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1366
    :goto_14
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1368
    if-eqz v41, :cond_36

    .line 1369
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v41 .. v41}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1370
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v43

    if-eqz v43, :cond_2c

    .line 1371
    invoke-virtual/range {v41 .. v41}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1373
    :cond_2c
    invoke-virtual/range {v41 .. v41}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1276
    .end local v41    # "zone":Ljava/util/TimeZone;
    .end local v42    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1277
    .local v13, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1274
    .end local v13    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v12

    .line 1275
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1285
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .local v41, "zone":Ljava/util/TimeZone;
    :cond_2d
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_2b

    .line 1286
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v43

    .line 1285
    if-eqz v43, :cond_2b

    .line 1290
    const-string/jumbo v43, "telephony.test.ignore.nitz"

    const/16 v44, 0x0

    .line 1289
    invoke-static/range {v43 .. v44}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_30

    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    const-wide/16 v46, 0x1

    and-long v44, v44, v46

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-nez v43, :cond_2f

    const/16 v35, 0x1

    .line 1293
    .local v35, "testOneUniqueOffsetPath":Z
    :goto_15
    invoke-static/range {v29 .. v29}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v40

    .line 1294
    .local v40, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2e

    if-eqz v35, :cond_31

    .line 1295
    :cond_2e
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "zone":Ljava/util/TimeZone;
    check-cast v41, Ljava/util/TimeZone;

    .line 1297
    .local v41, "zone":Ljava/util/TimeZone;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1298
    const-string/jumbo v44, " with zone.getID="

    .line 1297
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1298
    invoke-virtual/range {v41 .. v41}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v44

    .line 1297
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1299
    const-string/jumbo v44, " testOneUniqueOffsetPath="

    .line 1297
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {v41 .. v41}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1291
    .end local v35    # "testOneUniqueOffsetPath":Z
    .end local v40    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v41, "zone":Ljava/util/TimeZone;
    :cond_2f
    const/16 v35, 0x0

    .restart local v35    # "testOneUniqueOffsetPath":Z
    goto :goto_15

    .line 1289
    .end local v35    # "testOneUniqueOffsetPath":Z
    :cond_30
    const/16 v35, 0x0

    .restart local v35    # "testOneUniqueOffsetPath":Z
    goto :goto_15

    .line 1304
    .restart local v40    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_31
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: there are "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1305
    const-string/jumbo v44, " unique offsets for iso-cc=\'"

    .line 1304
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1306
    const-string/jumbo v44, " testOneUniqueOffsetPath="

    .line 1304
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1307
    const-string/jumbo v44, "\', do nothing"

    .line 1304
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1337
    .end local v35    # "testOneUniqueOffsetPath":Z
    .end local v40    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v41    # "zone":Ljava/util/TimeZone;
    .restart local v42    # "zoneName":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v43, v0

    if-nez v43, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v43, v0

    if-nez v43, :cond_35

    .line 1338
    if-eqz v42, :cond_35

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_35

    .line 1339
    sget-object v43, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v43

    if-gez v43, :cond_35

    .line 1340
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v41

    .line 1341
    .local v41, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v43, v0

    if-eqz v43, :cond_33

    .line 1344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1345
    .local v10, "ctm":J
    move-object/from16 v0, v41

    invoke-virtual {v0, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v38, v0

    .line 1347
    .local v38, "tzOffset":J
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: tzOffset="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, " ltod="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1348
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v44

    .line 1347
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1350
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v43

    if-eqz v43, :cond_34

    .line 1351
    sub-long v6, v10, v38

    .line 1352
    .local v6, "adj":J
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "pollStateDone: adj ltod="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 1353
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v44

    .line 1352
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1360
    .end local v6    # "adj":J
    .end local v10    # "ctm":J
    .end local v38    # "tzOffset":J
    :cond_33
    :goto_16
    const-string/jumbo v43, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1357
    .restart local v10    # "ctm":J
    .restart local v38    # "tzOffset":J
    :cond_34
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v38

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_16

    .line 1362
    .end local v10    # "ctm":J
    .end local v38    # "tzOffset":J
    .end local v41    # "zone":Ljava/util/TimeZone;
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v46, v0

    move/from16 v0, v43

    move/from16 v1, v44

    move-wide/from16 v2, v46

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v41

    .line 1363
    .restart local v41    # "zone":Ljava/util/TimeZone;
    const-string/jumbo v43, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1375
    :cond_36
    const-string/jumbo v43, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1403
    .end local v29    # "iso":Ljava/lang/String;
    .end local v31    # "mcc":Ljava/lang/String;
    .end local v32    # "operatorNumeric":Ljava/lang/String;
    .end local v33    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v41    # "zone":Ljava/util/TimeZone;
    .end local v42    # "zoneName":Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1438
    :cond_38
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    .line 1442
    const-string/jumbo v44, "gprs_register_check_period_ms"

    .line 1443
    const v45, 0xea60

    .line 1440
    invoke-static/range {v43 .. v45}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1444
    .local v8, "check_period":I
    const/16 v43, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v43

    .line 1445
    int-to-long v0, v8

    move-wide/from16 v44, v0

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_11

    .line 1448
    .end local v8    # "check_period":I
    :cond_39
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_11
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 2275
    monitor-enter p0

    .line 2276
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_4

    .line 2277
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 2280
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2281
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 2282
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2283
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    .line 2281
    if-nez v2, :cond_5

    .line 2284
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2291
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2292
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2293
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2294
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2296
    :cond_2
    const-string/jumbo v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2297
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 2298
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2306
    :cond_3
    :goto_0
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2307
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2308
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2309
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2310
    const-string/jumbo v2, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    monitor-exit p0

    .line 2274
    return-void

    .line 2286
    .restart local v0    # "dds":I
    :cond_5
    :try_start_1
    const-string/jumbo v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2287
    const-string/jumbo v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2275
    .end local v0    # "dds":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2299
    .restart local v0    # "dds":I
    :cond_6
    :try_start_2
    const-string/jumbo v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2302
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    .line 2303
    const/16 v3, 0x3e9

    const/4 v4, 0x0

    .line 2302
    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 2304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 2313
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_7
    const-string/jumbo v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 2315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1644
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1614
    packed-switch p1, :pswitch_data_0

    .line 1633
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1634
    return v2

    .line 1623
    :pswitch_1
    return v2

    .line 1626
    :pswitch_2
    return v0

    .line 1630
    :pswitch_3
    return v0

    .line 1614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 2324
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 2337
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2323
    return-void

    .line 2325
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 2326
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2328
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2329
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2330
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 2333
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2334
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDeviceShuttingDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDesiredPowerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRadioState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPowerOffDelayNeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 564
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_0

    .line 565
    const-string/jumbo v4, "mAlarmSwitch == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 566
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 567
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 568
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 569
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 573
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_2

    .line 574
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_2

    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 578
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v4, :cond_5

    .line 579
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_4

    .line 592
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 593
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 580
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    const-string/jumbo v4, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 581
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 582
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 584
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 587
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 588
    const-string/jumbo v4, "Alarm setting"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 589
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 596
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 597
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 599
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 1020
    .local v2, "isVoiceInService":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 1021
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1023
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1025
    const/4 v3, 0x2

    .line 1024
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 1035
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 1036
    .local v1, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1037
    .local v0, "dataRegType":I
    if-eqz v1, :cond_1

    .line 1038
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1039
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 1017
    :cond_1
    :goto_3
    return-void

    .line 1019
    .end local v0    # "dataRegType":I
    .end local v1    # "isDataInService":Z
    .end local v2    # "isVoiceInService":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isVoiceInService":Z
    goto :goto_0

    .line 1028
    :cond_3
    const/4 v3, 0x3

    .line 1027
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 1031
    :cond_4
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_1

    .line 1035
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isDataInService":Z
    goto :goto_2

    .line 1040
    .restart local v0    # "dataRegType":I
    :cond_6
    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1041
    if-eqz v2, :cond_7

    .line 1043
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 1047
    :cond_7
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3

    .line 1051
    :cond_8
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_3
.end method

.method protected updateRoamingState()V
    .locals 6

    .prologue
    .line 968
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v4, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 969
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 975
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 978
    const-string/jumbo v4, "carrier_config"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    .line 979
    .local v1, "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    if-eqz v1, :cond_8

    .line 981
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 983
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 984
    const-string/jumbo v4, "updateRoamingState: carrier config override always on home network"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    const/4 v3, 0x0

    .line 1004
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1005
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1006
    const/4 v3, 0x0

    .line 1009
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1010
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 954
    return-void

    .line 968
    .end local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :cond_3
    const/4 v3, 0x1

    .local v3, "roaming":Z
    goto :goto_0

    .line 970
    .end local v3    # "roaming":Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v4

    .line 969
    if-eqz v4, :cond_0

    .line 971
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "roaming":Z
    goto :goto_1

    .line 986
    .end local v3    # "roaming":Z
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configLoader":Lcom/android/internal/telephony/ICarrierConfigLoader;
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 988
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 989
    const/4 v3, 0x0

    .restart local v3    # "roaming":Z
    goto :goto_2

    .line 990
    .end local v3    # "roaming":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRoamingState: carrier config override set roaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 992
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 993
    const/4 v3, 0x1

    .restart local v3    # "roaming":Z
    goto/16 :goto_2

    .line 995
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "roaming":Z
    :catch_0
    move-exception v2

    .line 996
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "updateRoamingState: unable to access carrier config service"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 999
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string/jumbo v4, "updateRoamingState: no carrier config service available"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected updateSpnDisplay()V
    .locals 19

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 637
    .local v11, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v4, 0x0

    .line 638
    .local v4, "plmn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 639
    .local v3, "showPlmn":Z
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v14

    .line 640
    .local v14, "rule":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCombinedRegState()I

    move-result v7

    .line 641
    .local v7, "combinedRegState":I
    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    .line 642
    const/4 v1, 0x2

    if-ne v7, v1, :cond_9

    .line 643
    :cond_0
    const/4 v3, 0x1

    .line 644
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v1, :cond_8

    .line 646
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 647
    const v2, 0x1040303

    .line 646
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "plmn":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const-string/jumbo v2, "\'"

    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 674
    :goto_2
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "spn":Ljava/lang/String;
    :goto_3
    move-object v8, v6

    .line 676
    .local v8, "dataSpn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 677
    and-int/lit8 v1, v14, 0x1

    .line 678
    const/4 v2, 0x1

    .line 677
    if-ne v1, v2, :cond_e

    const/4 v5, 0x1

    .line 680
    .local v5, "showSpn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v1

    .line 680
    if-eqz v1, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 684
    const v2, 0x104014f

    .line 683
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 685
    .local v10, "formatVoice":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 686
    const v2, 0x1040150

    .line 685
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 687
    .local v9, "formatData":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 688
    .local v13, "originalSpn":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 691
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 692
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 693
    const/4 v5, 0x1

    .line 694
    const/4 v3, 0x0

    .line 702
    .end local v6    # "spn":Ljava/lang/String;
    .end local v9    # "formatData":Ljava/lang/String;
    .end local v10    # "formatVoice":Ljava/lang/String;
    .end local v13    # "originalSpn":Ljava/lang/String;
    :cond_2
    :goto_5
    const/4 v15, -0x1

    .line 703
    .local v15, "subId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v16

    .line 704
    .local v16, "subIds":[I
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_3

    .line 705
    const/4 v1, 0x0

    aget v15, v16, v1

    .line 707
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->maybeUpdateHDTagForSpn(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 708
    .restart local v6    # "spn":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->maybeUpdateHDTagForPlmn(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "config_spn_display_control"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 712
    const/4 v5, 0x0

    .line 716
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    if-ne v1, v15, :cond_5

    .line 717
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    if-eq v3, v1, :cond_12

    .line 723
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 725
    const-string/jumbo v2, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 726
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v2, v18

    const/16 v17, 0x1

    aput-object v4, v2, v17

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x2

    aput-object v17, v2, v18

    const/16 v17, 0x3

    aput-object v6, v2, v17

    const/16 v17, 0x4

    aput-object v8, v2, v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x5

    aput-object v17, v2, v18

    .line 723
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 728
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    const-string/jumbo v1, "showSpn"

    invoke-virtual {v12, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    const-string/jumbo v1, "spn"

    invoke-virtual {v12, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string/jumbo v1, "spnData"

    invoke-virtual {v12, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string/jumbo v1, "showPlmn"

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    const-string/jumbo v1, "plmn"

    invoke-virtual {v12, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    invoke-static {v12, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 740
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnUpdatePending:Z

    .line 744
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSubId:I

    .line 745
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 746
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 747
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 748
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 749
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 617
    return-void

    .line 639
    .end local v5    # "showSpn":Z
    .end local v6    # "spn":Ljava/lang/String;
    .end local v7    # "combinedRegState":I
    .end local v8    # "dataSpn":Ljava/lang/String;
    .end local v14    # "rule":I
    .end local v15    # "subId":I
    .end local v16    # "subIds":[I
    .local v4, "plmn":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "rule":I
    goto/16 :goto_0

    .line 650
    .restart local v7    # "combinedRegState":I
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    const v2, 0x10402eb

    .line 650
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "plmn":Ljava/lang/String;
    goto/16 :goto_1

    .line 655
    .local v4, "plmn":Ljava/lang/String;
    :cond_9
    if-nez v7, :cond_c

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "plmn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 659
    and-int/lit8 v1, v14, 0x2

    .line 660
    const/4 v2, 0x2

    .line 659
    if-ne v1, v2, :cond_a

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 658
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 663
    .local v4, "plmn":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x1

    .line 664
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 665
    const v2, 0x10402eb

    .line 664
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "plmn":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    const-string/jumbo v2, " plmn="

    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 674
    :cond_d
    const-string/jumbo v6, ""

    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_3

    .line 677
    .restart local v8    # "dataSpn":Ljava/lang/String;
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "showSpn":Z
    goto/16 :goto_4

    .line 676
    .end local v5    # "showSpn":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "showSpn":Z
    goto/16 :goto_4

    .line 695
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 696
    if-eqz v3, :cond_2

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 695
    if-eqz v1, :cond_2

    .line 698
    :cond_11
    const/4 v6, 0x0

    .line 699
    .local v6, "spn":Ljava/lang/String;
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 718
    .local v6, "spn":Ljava/lang/String;
    .restart local v15    # "subId":I
    .restart local v16    # "subIds":[I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-ne v5, v1, :cond_5

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6
.end method
